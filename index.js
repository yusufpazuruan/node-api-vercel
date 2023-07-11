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
// ABSENSI
// =====================================================================================================================

// ambil data absensi 1 satri sesuai id
app.get("/santri/:id/absensi", (req, res) => {
  const { id } = req.params;
  const query = "SELECT * FROM absensi WHERE santri_id = ?";
  connection.query(query, [id], (error, results) => {
    if (error) {
      console.error("Error retrieving absensi santri:", error);
      res.status(500).json({ error: "Error retrieving absensi santri" });
    } else {
      res.status(200).json(results);
    }
  });
});

// tambah data absensi 1 santri sesuai id
app.post("/santri/:id/absensi", (req, res) => {
  const { id, status, status_pengajar, mapel, pengajar } = req.body;

  const query =
    "INSERT INTO absensi (santri_id, status, status_pengajar, mapel, pengajar) VALUES (?, ?, ?, ?, ?)";
  connection.query(
    query,
    [id, status, status_pengajar, mapel, pengajar],
    (error, results) => {
      if (error) {
        console.error("Error adding absensi:", error);
        res.status(500).json({ error: "Error adding absensi" });
      } else {
        res.status(201).json({
          santri_id: id,
          status: status,
          status_pengajar: status_pengajar,
          mapel: mapel,
          pengajar: pengajar,
        });
      }
    }
  );
});

// tambah data absesnsi santri perkelas / banyak santri sekaligus
app.post("/santri/absensi", (req, res) => {
  const { santriOptions } = req.body;

  const values = santriOptions.map((santri) => [
    santri.id,
    santri.status,
    santri.status_pengajar,
    santri.mapel,
    santri.pengajar,
  ]);

  const query =
    "INSERT INTO absensi (santri_id, status, status_pengajar, mapel, pengajar) VALUES ?";

  connection.query(query, [values], (error, results) => {
    if (error) {
      console.error("Error adding absensi:", error);
      res.status(500).json({ error: "Error adding absensi" });
    } else {
      res.status(201).json({ success: true });
    }
  });
});

// edit data absensi sesuai id dari id santri
app.patch("/santri/:id/absensi/:absensiId", (req, res) => {
  const { id, absensiId } = req.params;
  const { tanggal, status, keterangan, mapel, pengajar } = req.body;

  const query =
    "UPDATE absensi SET tanggal = ?, status = ?, keterangan = ?, mapel = ?, pengajar = ? WHERE id = ?";
  connection.query(
    query,
    [tanggal, status, keterangan, mapel, pengajar, absensiId],
    (error, results) => {
      if (error) {
        console.error("Error updating absensi:", error);
        res.status(500).json({ error: "Error updating absensi" });
      } else {
        res.status(200).json({
          id: absensiId,
          santri_id: id,
          tanggal: tanggal,
          status: status,
          keterangan: keterangan,
          mapel: mapel,
          pengajar: pengajar,
        });
      }
    }
  );
});

// hapus data absensi sesuai id dari id santri
app.delete("/santri/:id/absensi/:absensiId", (req, res) => {
  const { id, absensiId } = req.params;

  const query = "DELETE FROM absensi WHERE id = ?";
  connection.query(query, [absensiId], (error, results) => {
    if (error) {
      console.error("Error deleting absensi:", error);
      res.status(500).json({ error: "Error deleting absensi" });
    } else {
      res.status(200).json({ message: `Absensi deleted successfully` });
    }
  });
});

// =====================================================================================================================
// HAFALAN
// =====================================================================================================================


// Start server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

module.exports = app;
