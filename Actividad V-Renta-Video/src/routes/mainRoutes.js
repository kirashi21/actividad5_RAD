const express = require('express');
const router = express.Router();

const mainController = require('../controllers/mainController');

router.get('/', mainController.estrenos);
router.get('/productCart', mainController.productCart);
//router.get('/productDetail', mainController.productDetail);
//router.get('/login', mainController.login);
//router.get('/register', mainController.register);
// router.get('/cargaProductos', mainController.addProduct);
module.exports = router;