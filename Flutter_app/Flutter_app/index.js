const express = require("express");
const morgan = require("morgan");
const cors = require("cors");

// const connectDB = require("./config/db");
// const passport = require("passport");
const mongoose = require("mongoose");
const userRoute = require("./routers/user");
const bp = require("body-parser");
const port = process.env.PORT || 5000;
const app = express();
// const uri = process.env.MONGODB_URI;

mongoose.connect(
  "mongodb+srv://flutterUser:changjiu.5210@register.9rbpe.mongodb.net/infos?retryWrites=true&w=majority",
  {
    userNewUrlParser: true,
    useCreateIndex: true,
    useUnifiedTopology: true,
  }
);

const connection = mongoose.connection;
connection.once("open", () => {
  console.log("mongodb connected!!!!!!!!!");
});
// app.use(cors());
app.use(express.json());

app.use("/user", userRoute);

app.route("/").get((req, res) => {res.json("hello world")}

);
app.route("/user").get((req, res) => res.json("hello "));
app.listen(port, () => {
  console.log(`welcome ur listening at port ${port}`);
});
