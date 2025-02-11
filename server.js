const express = require("express");
const app = express();
const port = process.env.PORT || 8080;

// Serve static files from the current directory
app.use(express.static("."));

// Start the server
app.listen(port, () => {
  console.log(`Server running at PORT:${port}`);
});