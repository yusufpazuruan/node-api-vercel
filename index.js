const express = require("express");
const cors = require("cors");
const mysql = require("mysql");

const app = express();
const port = 3000;

// Konfigurasi koneksi ke database
const connection = mysql.createConnection({
  host: "bt0c1py6lc9las0dii7m-mysql.services.clever-cloud.com",
  user: "ua4onvx8scjxye5f",
  password: "sM8aheuhLp98hPry9lKK",
  database: "bt0c1py6lc9las0dii7m",
 
});

connection.connect((error) => {
  if (error) {
    console.error("Error connecting to database:", error);
    return;
  }
  console.log("Connected to database");
});

// Middleware
app.use(cors());
app.use(express.json());

// ambil data tabel santri
app.get("/santri", (req, res) => {
  const query = "SELECT * FROM santri";
  connection.query(query, (error, results) => {
    if (error) {
      console.error("Error retrieving santri:", error);
      res.status(500).json({ error: "Error retrieving santri" });
    } else {
      res.status(200).json(results);
    }
  });
});

// ambil 1 data santri sesuai id
app.get("/santri/:id", (req, res) => {
  const { id } = req.params;
  const query = "SELECT * FROM santri WHERE id = ?";
  connection.query(query, [id], (error, results) => {
    if (error) {
      console.error("Error retrieving santri:", error);
      res.status(500).json({ error: "Error retrieving santri" });
    } else if (results.length === 0) {
      res.status(404).json({ error: "Santri not found" });
    } else {
      res.status(200).json(results[0]);
    }
  });
});

// add satu santri / banyak santri
app.post("/santri", (req, res) => {
  const { nis, kelas, nama, wali_kelas, active } = req.body;
  const query =
    "INSERT INTO santri (nis, kelas, nama, wali_kelas, active) VALUES (?, ?, ?, ?, ?)";
  connection.query(
    query,
    [nis, kelas, nama, wali_kelas, active],
    (error, results) => {
      if (error) {
        console.error("Error adding santri:", error);
        res.status(500).json({ error: "Error adding santri" });
      } else {
        res.status(201).json({ id: results.insertId, ...req.body });
      }
    }
  );
});

// edit 1 santri sesuai id
app.patch("/santri/:id", (req, res) => {
  const { id } = req.params;
  const { nis, kelas, nama, wali_kelas, active } = req.body;
  const query =
    "UPDATE santri SET nis = ?, kelas = ?, nama = ?, wali_kelas = ?, active = ? WHERE id = ?";
  connection.query(
    query,
    [nis, kelas, nama, wali_kelas, active, id],
    (error) => {
      if (error) {
        console.error("Error updating santri:", error);
        res.status(500).json({ error: "Error updating santri" });
      } else {
        res.status(200).json({ id, nis, kelas, nama, wali_kelas, active });
      }
    }
  );
});

// hapus 1 santri sesuai id
app.delete("/santri/:id", (req, res) => {
  const { id } = req.params;
  const query = "DELETE FROM santri WHERE id = ?";
  connection.query(query, [id], (error) => {
    if (error) {
      console.error("Error deleting santri:", error);
      res.status(500).json({ error: "Error deleting santri" });
    } else {
      res.status(200).json({ message: "Santri deleted" });
    }
  });
});

// =====================================================================================================================
// 
// =====================================================================================================================


// Start server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

module.exports = app;
