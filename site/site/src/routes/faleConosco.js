var express = require("express");
var router = express.Router();

var faleConoscoController = require("../controllers/faleConoscoController");

router.post("/enviar", function (req, res) {
    // função a ser chamada quando acessar /carros/cadastrar
    faleConoscoController.enviar(req, res);
});

router.get("/listar", function (req, res) {
    // função a ser chamada quando acessar /carros/listar
    faleConoscoController.listar(req, res);
});

module.exports = router;