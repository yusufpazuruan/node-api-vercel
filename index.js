// index.js
const express = require("express");
const cors = require("cors");
const mysql = require("mysql");

const app = express();
const PORT = 3000;

const connection = mysql.createConnection({
  host: "bt0c1py6lc9las0dii7m-mysql.services.clever-cloud.com",
  user: "ua4onvx8scjxye5f",
  password: "sM8aheuhLp98hPry9lKK",
  database: "bt0c1py6lc9las0dii7m",
  port: 3306,
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


app.listen(PORT, () => {
  console.log(`API listening on PORT ${PORT} `);
});

// app.get("/", (req, res) => {
//   res.send("Hey this is my API running 🥳");
// });

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

app.get("/about", (req, res) => {
  res.send("This is my about route..... ");
});

// Export the Express API
module.exports = app;
