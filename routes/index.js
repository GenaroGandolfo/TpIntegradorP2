var express = require('express');
var router = express.Router();

const homeController = require('../controllers/homeController');

/* GET home page. */
router.get('/', homeController.index);
router.get('/product/:id', homeController.product);

module.exports = router;
