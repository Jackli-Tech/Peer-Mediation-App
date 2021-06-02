const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const Table = Schema({
  // username: String,
  mondayTable: String,
  tuesdayTable: String,
  wednesdayTable: String,
  thursdayTable: String,
  fridayTable: String,
});

module.exports = mongoose.model("Table", Table);
