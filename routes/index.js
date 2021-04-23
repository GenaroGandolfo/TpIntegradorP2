var express = require('express');
var router = express.Router();
const homeControllers = require('../controllers/homeControllers');



/* GET home page. */
router.get('/', homeControllers.index);
router.get('/detail/:id', homeControllers.detail);

module.exports = router;
