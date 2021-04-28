const cors = require("cors");
const express = require("express");
const morgan = require("morgan");
const routes = require("./routes/localites");

const app = express();

app.use(cors("*"));
app.use(morgan("dev"));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/localites", routes);

app.listen(3003, () => console.log("Express server is running"));
