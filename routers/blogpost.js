const express = require("express");
const router = express.Router();
const BlogPost = require("../models/blogpost.model");
const middleware = require("../middleware");

router.route("/Add").post(middleware.checkToken, (req, res) => {
  const blogpost = new BlogPost({
    username: req.decoded.username,
    title: req.body.title,
    body: req.body.body,
  });
  blogpost
    .save()
    .then((result) => {
      res.status(200).json("okk");
    })
    .catch((err) => {
      res.status(403).json({ msg: err });
    });
});
module.exports = router;
