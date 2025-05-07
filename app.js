const express = require("express");
const cors = require("cors");

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());

app.get("/", (req, res) => {
  res.json({ message: "Hello from Express API! by ci/cd" });
});

app.get("/api", (req, res) => {
  res.json({ message: "Greetings from your Node.js app!" });
});

app.listen(port, () => {
  console.log(`Express server running at http://localhost:${port}`);
});
