const express = require("express");
const cars = require("./cars.route");
const accounts = require("./accounts.route");
const products = require("./products.route");

const router = express.Router();

router.use("/cars", cars);
router.use("/accounts", accounts);
router.use("/products", products);

module.exports = router;
