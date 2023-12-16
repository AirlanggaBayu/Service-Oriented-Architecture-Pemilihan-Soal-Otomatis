var express = require('express');
var router = express.Router();
const multer = require('multer');
const mysql = require('mysql');

//import database
var connection = require('../library/database');


/**
 * MENAMPILKAN SEMUA LIST UJIAN
 */
router.get('/ujian', function (req, res, next) {
    //query
    connection.query('SELECT * FROM ujian ORDER BY id desc', function (err, rows) {
        if (err) {
            req.flash('error', err);
            res.render('posts/ujian', {
                data: ''
            });
        } else {
            //render ke view posts index
            
            res.render('posts/listujian', {
                data: rows // <-- data posts
            });
        }
    });
});

/**
 * MEMBUAT UJIAN BARU
 */
router.get('/buatujian', function (req, res, next) {
    res.render('posts/createujian', {
        judul: '',
        tanggal: '',
        berkas: ''
    })
})

/**
 * STORE POST
 */
router.post('/simpan', function (req, res, next) {
    

    let judul   = req.body.judul;
    let tanggal = req.body.tanggal;
    let berkas = req.body.berkas;
    let errors  = false;

    if(!errors) {

        let formData = {
            judul: judul,
            tanggal: tanggal,
            berkas: berkas
            
        }
        
        // insert query
        connection.query('INSERT INTO ujian SET ?', formData, function(err, result) {
            //if(err) throw err
            if (err) {
                req.flash('error', err)
                 
                // render to add.ejs
                res.render('posts/createujian', {
                    judul: formData.judul,
                    tanggal: formData.tanggal,                    
                    berkas: formData.berkas                                       
                })
            } else {                
                req.flash('success', 'Data Berhasil Disimpan!');
                res.redirect('/posts/ujian');
            }
        })
    }

})


/**
 * MENAMPILKAN SEMUA LIST PERTANYAAN DI BANK SOAL
 */
router.get('/', function (req, res, next) {
    //query
    connection.query('SELECT * FROM posts ORDER BY id desc', function (err, rows) {
        if (err) {
            req.flash('error', err);
            res.render('posts', {
                data: ''
            });
        } else {
            //render ke view posts index
            
            res.render('posts/index', {
                data: rows // <-- data posts
            });
        }
    });
});

/**
 * MEMBUAT SOAL BARU
 */
router.get('/create', function (req, res, next) {
    res.render('posts/create', {
        pertanyaan: '',
        jawaban_a: '',
        jawaban_b: '',
        jawaban_c: '',
        jawaban_d: '',
        kesulitan: '',
        materi: ''
    })
})

/**
 * MENYIMPAN SOAL
 */
router.post('/store', function (req, res, next) {
    

    let pertanyaan   = req.body.pertanyaan;
    let jawaban_a = req.body.jawaban_a;
    let jawaban_b = req.body.jawaban_b;
    let jawaban_c = req.body.jawaban_c;
    let jawaban_d = req.body.jawaban_d;
    let kesulitan = req.body.kesulitan;
    let materi = req.body.materi;
    let errors  = false;

    if(!errors) {

        let formData = {
            pertanyaan: pertanyaan,
            jawaban_a: jawaban_a,
            jawaban_b: jawaban_b,
            jawaban_c: jawaban_c,
            jawaban_d: jawaban_d,
            kesulitan: kesulitan,
            materi: materi
        }
        
        // insert query
        connection.query('INSERT INTO posts SET ?', formData, function(err, result) {
            //if(err) throw err
            if (err) {
                req.flash('error', err)
                 
                // render to add.ejs
                res.render('posts/create', {
                    pertanyaan: formData.pertanyaan,
                    jawaban_a: formData.jawaban_a,                    
                    jawaban_b: formData.jawaban_b,                    
                    jawaban_c: formData.jawaban_c,                    
                    jawaban_d: formData.jawaban_d,                    
                    kesulitan: formData.kesulitan,                   
                    materi: formData.materi                   
                })
            } else {                
                req.flash('success', 'Data Berhasil Disimpan!');
                res.redirect('/posts');
            }
        })
    }

})

/**
 * EDIT SOAL
 */
router.get('/edit/(:id)', function(req, res, next) {

    let id = req.params.id;
   
    connection.query('SELECT * FROM posts WHERE id = ' + id, function(err, rows, fields) {
        if(err) throw err
         
        // if user not found
        if (rows.length <= 0) {
            req.flash('error', 'Data Post Dengan ID ' + id + " Tidak Ditemukan")
            res.redirect('/posts')
        }
        // if book found
        else {
            // render to edit.ejs
            res.render('posts/edit', {
                id:      rows[0].id,
                pertanyaan:   rows[0].pertanyaan,
                jawaban_a: rows[0].jawaban_a,
                jawaban_b: rows[0].jawaban_b,
                jawaban_c: rows[0].jawaban_c,
                jawaban_d: rows[0].jawaban_d,
                kesulitan: rows[0].kesulitan,
                materi: rows[0].materi
            })
        }
    })
})

/**
 * UPDATE SOAL
 */
router.post('/update/:id', function(req, res, next) {

    let id      = req.params.id;
    let pertanyaan   = req.body.pertanyaan;
    let jawaban_a = req.body.jawaban_a;
    let jawaban_b = req.body.jawaban_b;
    let jawaban_c = req.body.jawaban_c;
    let jawaban_d = req.body.jawaban_d;
    let kesulitan = req.body.kesulitan;
    let materi = req.body.materi;
    let errors  = false;

    if( !errors ) {   
 
        let formData = {
            pertanyaan: pertanyaan,
            jawaban_a: jawaban_a,
            jawaban_b: jawaban_b,
            jawaban_c: jawaban_c,
            jawaban_d: jawaban_d,
            kesulitan: kesulitan,
            materi: materi
        }

        // update query
        connection.query('UPDATE posts SET ? WHERE id = ' + id, formData, function(err, result) {
            //if(err) throw err
            if (err) {
                // set flash message
                req.flash('error', err)
                // render to edit.ejs
                res.render('posts/edit', {
                    id:     req.params.id,
                    name:   formData.name,
                    author: formData.author
                })
            } else {
                req.flash('success', 'Data Berhasil Diupdate!');
                res.redirect('/posts');
            }
        })
    }
})

/**
 * DELETE SOAL
 */
router.get('/delete/(:id)', function(req, res, next) {

    let id = req.params.id;
     
    connection.query('DELETE FROM posts WHERE id = ' + id, function(err, result) {
        //if(err) throw err
        if (err) {
            // set flash message
            req.flash('error', err)
            // redirect to posts page
            res.redirect('/posts')
        } else {
            // set flash message
            req.flash('success', 'Data Berhasil Dihapus!')
            // redirect to posts page
            res.redirect('/posts')
        }
    })
})

/**
 * METODE ACAK SOAL UJIAN 
 */
router.get('/rangkai', function (req, res, next) {
    //query
    //render ke view posts index
    res.render('posts/rangkai');
});

/**
 * METODE ACAK
 */
router.get('/acak', function (req, res, next) {
    //query
    connection.query('SELECT * FROM posts ORDER BY RAND() LIMIT 20', function (err, rows) {
        if (err) {
            req.flash('error', err);
            res.render('posts', {
                data: ''
            });
        } else {
            //render ke view acak index
            res.render('posts/acak', {
                data: rows // <-- data posts
            });
        }
    });
});

/**
 * ACAK POSTS BERDASARKAN KESULITAN
 */
router.get('/kesulitan', function (req, res, next) {
    //query
    connection.query("SELECT * FROM (SELECT * FROM `posts` WHERE kesulitan = 'Mudah' ORDER BY RAND() LIMIT 5) AS mudah UNION ALL SELECT * FROM (SELECT * FROM `posts` WHERE kesulitan = 'Sedang' ORDER BY RAND() LIMIT 10) AS sedang UNION ALL SELECT * FROM (SELECT * FROM `posts` WHERE kesulitan = 'Sulit' ORDER BY RAND() LIMIT 5) AS sulit", function (err, rows) {
        if (err) {
            req.flash('error', err);
            res.render('posts', {
                data: ''
            });
        } else {
            //render ke view kesulitan index
            res.render('posts/kesulitan', {
                data: rows // <-- data posts
            });
        }
    });
});

/**
 * ACAK POSTS BERDASARKAN MATERI
 */
router.get('/materi', function (req, res, next) {
    //query
    connection.query("SELECT * FROM (SELECT * FROM `posts` WHERE materi = 'Bab 1' ORDER BY RAND() LIMIT 2) AS bab1 UNION ALL SELECT * FROM (SELECT * FROM `posts` WHERE materi = 'Bab 2' ORDER BY RAND() LIMIT 3) AS bab2 UNION ALL SELECT * FROM (SELECT * FROM `posts` WHERE materi = 'Bab 3' ORDER BY RAND() LIMIT 10) AS bab3 UNION ALL SELECT * FROM (SELECT * FROM `posts` WHERE materi = 'Bab 4' ORDER BY RAND() LIMIT 3) AS bab4 UNION ALL SELECT * FROM (SELECT * FROM `posts` WHERE materi = 'Bab 5' ORDER BY RAND() LIMIT 2) AS bab5", function (err, rows) {
        if (err) {
            req.flash('error', err);
            res.render('posts', {
                data: ''
            });
        } else {
            //render ke view materi index
            res.render('posts/materi', {
                data: rows // <-- data posts
            });
        }
    });
});

// KONFIGURASI MULTER
const storage = multer.diskStorage({
    destination: 'public/uploads/',
    filename: (req, file, cb) => {
      cb(null, Date.now() + '-' + file.originalname);
    },
  });

const upload = multer({ storage });

// FUNGSI UNTUK MELAKUKAN MEMBUAT UJIAN DENGAN UPLOAD FILE
router.post('/coba', upload.single('berkas'), async (req, res, next) => {
    try {
      let errors = false;
      let file = req.file;
  
      if (!file) {
        errors = true;
        req.flash('error', 'Berkas tidak boleh kosong!');
      }
  
      let judul = req.body.judul;
      let tanggal = req.body.tanggal;
  
      if (!errors) {
        let formData = {
          judul: judul,
          tanggal: tanggal,
          berkas: file.filename,
        };
  
        await connection.query('INSERT INTO ujian SET ?', formData);
        req.flash('success', 'Data Berhasil Disimpan!');
        res.redirect('/posts/ujian');
      } else {
        res.render('posts/createujian', {
          judul: judul,
          tanggal: tanggal,
          errors: errors,
        });
      }
    } catch (error) {
      console.error(error);
      req.flash('error', 'Terjadi kesalahan!');
      res.redirect('/posts/createujian');
    }
  });



module.exports = router;