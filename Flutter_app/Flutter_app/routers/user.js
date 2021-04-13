const express = require("express");
const User = require("../models/users.model");
const config = require("../config");
const jwt = require("jsonwebtoken");
const middleware = require("../middleware");

const router = express.Router();

router.route("/:username").get(middleware.checkToken, (req, res) => {
  User.findOne({ username: req.params.username }, (err, result) => {
    if (err) return res.status(500).json({ msg: err });
    // console.log(req.params);
    // console.log(result);
    res.json({
      data: result,
      username: req.params.username,
    });
  });
});

router.route("/checkusername/:username").get((req, res) => {
  User.findOne({ username: req.params.username }, (err, result) => {
    if (err) return res.status(500).json({ msg: err });
    if (result !== null) {
      return res.json({
        Status: true,
      });
    } else
      return res.json({
        Status: false,
      });
  });
});
// User login
router.route("/login").post((req, res) => {
  User.findOne({ username: req.body.username }, (err, result) => {
    
    if (err) return res.status(500).json({ msg: err });
    if (result === null) {
      return res.status(403).json("Username incorrect");
    }

    // if (result.role !== role) {
    //   return res.status(403).json({
    //     message: "Please make sure you are logging in from the right portal",
    //     success: false,
    //   });
    // }

    if (result.password === req.body.password) {
      let token = jwt.sign(
        { username: req.body.username, role: result.role },
        config.key,
        {
          expiresIn: "24h",
        }
      );
      console.log(req.body.username);

      if (result.role == "user") {
        res.json({
          token: token,
          role: "user",
          msg: "success",
        });
      }
      if (result.role == "admin") {
        res.json({
          token: token,
          role: "admin",
          msg: "success",
        });
      }
      if (result.role == "superadmin") {
        res.json({
          token: token,
          role: "superadmin",
          msg: "success",
        });
      }
    } else {
      res.status(403).json("password is incorrect");
    }
  });
});

// Admin login
router.route("/login-admin").post(async (req, res) => {
  User.findOne({ username: req.body.username }, (err, result) => {
    const role = "admin";
    if (err) return res.status(500).json({ msg: err });
    if (result === null) {
      return res.status(403).json("Username incorrect");
    }
    if (result.role !== role) {
      return res.status(403).json({
        message: "Please make sure you are logging in from the right portal",
        success: false,
      });
    }
    if (result.password === req.body.password) {
      let token = jwt.sign({ username: req.body.username }, config.key, {
        expiresIn: "24h",
      });
      res.json({
        token: token,
        msg: "success",
      });
    } else {
      res.status(403).json("password is incorrect");
    }
  });
});
//Super Admin login
router.route("/login-super-admin").post(async (req, res) => {
  User.findOne({ username: req.body.username }, (err, result) => {
    const role = "superadmin";
    if (err) return res.status(500).json({ msg: err });
    if (result === null) {
      return res.status(403).json("Username incorrect");
    }
    if (result.role !== role) {
      return res.status(403).json({
        message: "Please make sure you are logging in from the right portal",
        success: false,
      });
    }
    if (result.password === req.body.password) {
      let token = jwt.sign({ username: req.body.username }, config.key, {
        expiresIn: "24h",
      });
      res.json({
        token: token,
        msg: "success",
      });
    } else {
      res.status(403).json("password is incorrect");
    }
  });
});

// Users Registeration

router.route("/register").post(async (req, res) => {
  // Store hash in your password DB.
  const role = "user";
  // console.log(req);
  const user = new User({
    username: req.body.username,
    password: req.body.password,
    email: req.body.email,
    role: role,
  });
  user
    .save()
    .then(() => {
      console.log("user registered");

      res.status(200).json("okk");
    })
    .catch((err) => {
      res.status(403).json({ msg: err });
    });
});

// Admin Registeration
router.route("/register-admin").post(async (req, res) => {
  // console.log("start");
  // const hashedPassword = await bcrypt.hash(req.body.password, 12);
  // console.log(hashedPassword);
  // Store hash in your password DB.
  const role = "admin";
  // console.log(req);
  const user = new User({
    username: req.body.username,
    password: req.body.password,
    email: req.body.email,
    role: role,
  });
  user
    .save()
    .then(() => {
      console.log("user registered");

      res.status(200).json("ok");
    })
    .catch((err) => {
      res.status(403).json({ msg: err });
    });
});

router.route("/register-super-admin").post(async (req, res) => {
  // Store hash in your password DB.
  const role = "superadmin";
  // console.log(req);
  const user = new User({
    username: req.body.username,
    password: req.body.password,
    email: req.body.email,
    role: role,
  });
  user
    .save()
    .then(() => {
      console.log("user registered");

      res.status(200).json("ok");
    })
    .catch((err) => {
      res.status(403).json({ msg: err });
    });
});

//Profile route
router.route("/profile").get(async (req, res) => {});

//User Protected route
router.route("/user-protected").post(async (req, res) => {});
//Admin Protected route
router.route("/admin-protected").post(async (req, res) => {});
//Super Admin Protected route
router.route("/super-admin-protected").post(async (req, res) => {});

router.route("/update/:username").patch((req, res) => {
  User.findOneAndUpdate(
    { username: req.params.username },
    { $set: { password: req.body.password } },
    (err, result) => {
      if (err) return res.status(500).json({ msg: err });
      const msg = {
        msg: "password successfully updated",
        username: req.params.username,
      };
      return res.json(msg);
    }
  );
});

router.route("/delete/:username").delete(middleware.checkToken, (req, res) => {
  User.findOneAndDelete({ username: req.params.username }, (err, result) => {
    if (err) return res.status(500).json({ msg: err });
    const msg = {
      msg: "username deleted",
      username: req.params.username,
    };
    return res.json(msg);
  });
});

module.exports = router;
