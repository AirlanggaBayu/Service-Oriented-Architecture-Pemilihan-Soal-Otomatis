const express = require('express');
const fileUpload = require('express-fileupload');
const fs = require('fs');

const app = express();

// Middleware for file uploads
app.use(fileUpload());

// File Upload and Save Endpoint
app.post('/upload', (req, res) => {
  if (!req.files || Object.keys(req.files).length === 0) {
    return res.status(400).json({ message: 'No files were uploaded.' });
  }

  const uploadedFile = req.files.uploadedFile;

 // console.log(hasil.concat(username,", ", password));

  // Save the uploaded file to a specific directory
  const uploadPath = './uploads/';

  if (!fs.existsSync(uploadPath)) {
    fs.mkdirSync(uploadPath, { recursive: true });
  }

  uploadedFile.mv(`${uploadPath}/${uploadedFile.name}`, (err) => {
    if (err) {
      return res.status(500).json({ message: 'Error uploading the file.' });
    }

    res.json({ message: 'File uploaded and saved successfully!' });
  });
});

const PORT = 8000;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

