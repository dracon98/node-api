const data = require("../../data");

const get = function(_id) {
  return getAll().find(products => products.id == _id);
};

const getAll = function() {
  return data.storeProducts;
};

module.exports = {
  get,
  getAll
};
