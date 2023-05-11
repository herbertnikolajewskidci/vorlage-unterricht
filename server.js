import cors from "cors";
import express from "express";

const app = express();
const port = 3000;

app.use(cors());
app.get("/api/data", (req, res) => {
    const data = {
        message: "Hallo vom Backend!",
    };

    res.json(data);
});

app.listen(port, () => {
    console.log(`Der Server läuft auf Port ${port}`);
});
