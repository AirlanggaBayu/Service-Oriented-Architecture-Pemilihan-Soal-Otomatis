const express = require('express');
const bodyParser = require('body-parser');
const koneksi = require('./config/database');
const app = express();
const PORT = process.env.PORT || 8000;

// set body parser
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

// ============= create data / insert data
// coba di postman --> (post, x-www-urlencoded)
app.post('/soal', (req, res) => {

    console.log('datanya', req.body);
    // buat variabel penampung data dan query sql
    const data = { ...req.body };
    const querySql = 'INSERT INTO posts SET ?';
    console.log('coba create /input baru');
    console.log('datanya=', req.body);

    // jalankan query
    koneksi.query(querySql, data, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Gagal insert data soal!', error: err });
        }

        // jika request berhasil
        res.status(201).json({ success: true, message: 'Berhasil menambah data soal baru' });
    });
});


// ============= read data / get data
// coba di postman --> (get)
app.get('/soal', (req, res) => {
    // buat query sql
    const querySql = 'SELECT * FROM posts';
    console.log('Ini GET' );

    // jalankan query
    koneksi.query(querySql, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika request berhasil
        res.status(200).json({ success: true, data: rows });
    });
});


// ========= get one record data
// coba di postman --> (get)
app.get('/soal/:id', (req, res) => {
    // buat query sql
    const querySql = `SELECT * FROM posts WHERE id = ${req.params.id}`;
    console.log(`Request id = ${req.params.id}`) 
   

    // jalankan query
    koneksi.query(querySql, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika request berhasil
        res.status(200).json({ success: true, data: rows });
    });
});


// update data 
// coba di postman --> (put, body)
app.put('/soal/:id', (req, res) => {
    // buat variabel penampung data dan query sql
    const data = { ...req.body };
    const querySearch = 'SELECT * FROM posts WHERE id = ?';
    const queryUpdate = 'UPDATE posts SET ? WHERE id = ?';

    // jalankan query untuk melakukan pencarian data
    koneksi.query(querySearch, req.params.id, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika id yang dimasukkan sesuai dengan data yang ada di db
        if (rows.length) {
            // jalankan query update
            koneksi.query(queryUpdate, [data, req.params.id], (err, rows, field) => {
                // error handling
                if (err) {
                    return res.status(500).json({ message: 'Ada kesalahan', error: err });
                }

                // jika update berhasil
                res.status(200).json({ success: true, message: 'Berhasil update soal!' });
            });
        } else {
            return res.status(404).json({ message: 'Data soal tidak ditemukan!', success: false });
        }
    });
});


// delete data
// coba di postman --> (delete)
app.delete('/soal/:id', (req, res) => {
    // buat query sql untuk mencari data dan hapus
    const querySearch = 'SELECT * FROM posts WHERE id = ?';
    const queryDelete = 'DELETE FROM posts WHERE id = ?';

    // jalankan query untuk melakukan pencarian data
    koneksi.query(querySearch, req.params.id, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika id yang dimasukkan sesuai dengan data yang ada di db
        if (rows.length) {
            // jalankan query delete
            koneksi.query(queryDelete, req.params.id, (err, rows, field) => {
                // error handling
                if (err) {
                    return res.status(500).json({ message: 'Ada kesalahan', error: err });
                }

                // jika delete berhasil
                res.status(200).json({ success: true, message: 'Berhasil hapus data!' });
            });
        } else {
            return res.status(404).json({ message: 'Data tidak ditemukan!', success: false });
        }
    });
});

// Menampilkan pemilihan soal otomatis secara acak
app.get('/acak', (req, res) => {
    // buat query sql
    const querySql = 'SELECT * FROM posts ORDER BY RAND() LIMIT 20';
    console.log('Ini GET' );

    // jalankan query
    koneksi.query(querySql, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika request berhasil
        res.status(200).json({ success: true, data: rows });
    });
});

// Menampilkan pemilihan soal otomatis berdasarkan tingkat kesulitan
app.get('/kesulitan', (req, res) => {
    // buat query sql
    const querySql = "SELECT * FROM (SELECT * FROM `posts` WHERE kesulitan = 'Mudah' ORDER BY RAND() LIMIT 5) AS mudah UNION ALL SELECT * FROM (SELECT * FROM `posts` WHERE kesulitan = 'Sedang' ORDER BY RAND() LIMIT 10) AS sedang UNION ALL SELECT * FROM (SELECT * FROM `posts` WHERE kesulitan = 'Sulit' ORDER BY RAND() LIMIT 5) AS sulit";
    console.log('Ini GET' );

    // jalankan query
    koneksi.query(querySql, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika request berhasil
        res.status(200).json({ success: true, data: rows });
    });
});

// Menampilkan pemilihan soal otomatis berdasarkan materi
app.get('/materi', (req, res) => {
    // buat query sql
    const querySql = 'SELECT * FROM (SELECT * FROM `posts` WHERE materi = "Bab 1" ORDER BY RAND() LIMIT 2) AS bab1 UNION ALL SELECT * FROM (SELECT * FROM `posts` WHERE materi = "Bab 2" ORDER BY RAND() LIMIT 3) AS bab2 UNION ALL SELECT * FROM (SELECT * FROM `posts` WHERE materi = "Bab 3" ORDER BY RAND() LIMIT 10) AS bab3 UNION ALL SELECT * FROM (SELECT * FROM `posts` WHERE materi = "Bab 4" ORDER BY RAND() LIMIT 3) AS bab4 UNION ALL SELECT * FROM (SELECT * FROM `posts` WHERE materi = "Bab 5" ORDER BY RAND() LIMIT 2) AS bab5';
    console.log('Ini GET' );

    // jalankan query
    koneksi.query(querySql, (err, rows, field) => {
        // error handling
        if (err) {
            return res.status(500).json({ message: 'Ada kesalahan', error: err });
        }

        // jika request berhasil
        res.status(200).json({ success: true, data: rows });
    });
});

// buat server nya
app.listen(PORT, () => console.log(`Server running at port: ${PORT}`));
