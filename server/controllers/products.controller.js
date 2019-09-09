const productsService = require("../services/products.service");

const get = function(req, res) {
  res.send(productsService.get(req.params._id));
};

const getAll = function(req, res) {
  res.send(productsService.getAll());
};

module.exports = {
  get,
  getAll
};
