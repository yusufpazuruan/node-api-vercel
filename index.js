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

// Routes
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



// Start server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

module.exports = app;
