const mongoose = require("mongoose");
// const bcrypt = require("bcrypt");
const Schema = mongoose.Schema;

const Form = Schema(
  { username: String,
    MediatorName: {
      type: String,
      required: true,
    },
    DisputantAName: {
      type: String,
      required: true,
    },
    DisputantBName: {
      type: String,
      required: true,
    },
    Conflict: {
      type: String,
      required: true,
    },
    HowCome: {
      type: String,
      required: true,
    },
    Refer: {
      type: String,
      required: true,
    },
    Agree: {
      type: String,
      required: true,
    },
    DisputantASign: {
      type: String,
      required: true,
    },
    DisputantBSign: {
      type: String,
      required: true,
    },
    createTime: {
      type: String,
      default: Date.now,
    },
  },
  {
    versionKey: false,
    timestamps: { createdAt: "createTime" },
  }
);

module.exports = mongoose.model("Form", Form);
