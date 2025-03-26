const express = require("express");
const path = require("path");
const sqlite3 = require("sqlite3").verbose();
const fs = require("fs");

const app = express();

// Database setup with error handling
const dbPath = path.join(__dirname, ".database", "datasource.db");
console.log("Database path:", dbPath);

if (!fs.existsSync(dbPath)) {
    console.error("Error: Database file not found at", dbPath);
    process.exit(1);
}

const db = new sqlite3.Database(dbPath, (err) => {
    if (err) {
        console.error("Database connection error:", err.message);
        process.exit(1);
    }
    console.log("Connected to SQLite database");
});

// Middleware
app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});

app.use(express.static(path.join(__dirname, "public")));

// Routes
app.get("/api/Events", (req, res) => {
    console.log("Fetching Events...");
    db.all("SELECT * FROM Events", (err, rows) => {
        if (err) {
            console.error("Database error:", err);
            return res.status(500).json({ error: err.message });
        }
        console.log('Returned ${rows.length} Events');
        res.json(rows);
    });
});

// Test endpoint
app.get("/api/test", (req, res) => {
    res.json({ 
        status: "Server is working",
        time: new Date().toISOString()
    });
});

// Default route
app.get('/', (req,res) => {
    res.send('Hello, World!');  
});

// Start server (ONLY ONE app.listen)
const PORT = 5000;
app.listen(PORT, () => {
    console.log('Server running on http://localhost:${PORT}');
});

app.use(express.static(path.join(__dirname, "public")));

// Serve manifest.json properly
app.get("/manifest.json", (req, res) => {
    res.sendFile(path.join(__dirname, "manifest.json"));
});

// Serve the index.html file when the user visits the root URL
app.get("/", function (req, res) {
    res.sendFile(path.join(__dirname, "public/index.html"));
});