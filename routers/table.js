const express = require("express");
const config = require("../config");
const jwt = require("jsonwebtoken");
const middleware = require("../middleware");
const Table = require("../models/timeTable");
const router = express.Router();
var ObjectId = require("mongodb").ObjectID;
router.route("/Addtable").post(middleware.checkToken, (req, res) => {
  const table = new Table({
    // username: req.decoded.username,
    mondayTable: req.body.mondayNames,
    tuesdayTable: req.body.tuesdayNames,
    wednesdayTable: req.body.wednesdayNames,
    thursdayTable: req.body.thursdayNames,
    fridayTable: req.body.fridayNames,
  });
  console.log("test");
  
  table
  .save()
    .then((result) => {
      console.log("monday:" + table.mondayTable);
      res.status(200).json(result);
    })
    .catch((err) => {
      console.log(err);
      res.status(403).json({ msg: err });
    });
});
router.route("/getalltable-data").get(middleware.checkToken, (req, res) => {
  Table.find({}, (err, result) => {
    console.log(req.decoded.username);
    if (err) return res.json({ err: err });
    if (result == null) return res.json({ data: [] });
    else return res.json({ data: result });
  });
});
router
  .route("/updatetableMonday/:id")
  .patch(middleware.checkToken, async (req, res) => {
    Table.findByIdAndUpdate(
      { _id: ObjectId(req.params.id) },
      {
        mondayTable: req.body.mondayNames,
      },
      { new: true }
    )
      .then((result) => {
        res.json(result);
      })
      .catch((err) => res.json(err));
  });
  router
    .route("/updatetableTuesday/:id")
    .patch(middleware.checkToken, async (req, res) => {
      Table.findByIdAndUpdate(
        { _id: ObjectId(req.params.id) },
        {
          tuesdayTable: req.body.tuesdayNames,
        },
        { new: true }
      )
        .then((result) => {
          res.json(result);
        })
        .catch((err) => res.json(err));
    });
    router
      .route("/updatetableWednesday/:id")
      .patch(middleware.checkToken, async (req, res) => {
        Table.findByIdAndUpdate(
          { _id: ObjectId(req.params.id) },
          {
            wednesdayTable: req.body.wednesdayNames,
          },
          { new: true }
        )
          .then((result) => {
            res.json(result);
          })
          .catch((err) => res.json(err));
      });
      router
        .route("/updatetableThursday/:id")
        .patch(middleware.checkToken, async (req, res) => {
          Table.findByIdAndUpdate(
            { _id: ObjectId(req.params.id) },
            {
              thursdayTable: req.body.thursdayNames,
            },
            { new: true }
          )
            .then((result) => {
              res.json(result);
            })
            .catch((err) => res.json(err));
        });
        router
          .route("/updatetableFriday/:id")
          .patch(middleware.checkToken, async (req, res) => {
            Table.findByIdAndUpdate(
              { _id: ObjectId(req.params.id) },
              {
                fridayTable: req.body.fridayNames,
              },
              { new: true }
            )
              .then((result) => {
                res.json(result);
              })
              .catch((err) => res.json(err));
          });
module.exports = router;