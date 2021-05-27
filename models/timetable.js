const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const Table = Schema({
  monday: {
    type: Array,
    required: true,
    unique: true,
  },
  tuesday: {
    type: Array,
    required: true,
  },
  wednesday: {
    type: Array,
    required: true,
  },
  thursday: {
    type: Array,
    required: true,
  },
  friday: {
    type: Array,
    required: true,
  },
});

module.exports = mongoose.model("Table", Table);
