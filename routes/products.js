const express = require ('express');
const router = express.Router();
var productController = require(`../controllers/productController`);


router.get ('/', proudctController.index );

module.exports = router;
