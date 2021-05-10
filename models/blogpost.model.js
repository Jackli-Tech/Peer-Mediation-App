const mongoose = require("mongoose");
// const bcrypt = require("bcrypt");
const Schema = mongoose.Schema;

const BlogPost = Schema({
  username: String,
  title: String,
  body: String
});

module.exports = mongoose.model("BlogPost", BlogPost);
