var express = require("express");
var router = express.Router();

var graficoController = require("../controllers/graficoController");

router.get("/ultimas", function (req, res) {
    graficoController.listar(req, res);
});


module.exports = router;