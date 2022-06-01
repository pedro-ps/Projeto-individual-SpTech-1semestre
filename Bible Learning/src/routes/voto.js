var express = require("express");
var router = express.Router();

var votoController = require("../controllers/votoController");

router.get("/trazer/:fk_parte_favorita", function (req, res) {
    votoController.trazer(req, res);
});

//PROBLEMA  
router.post("/mandar", function (req, res) {
    votoController.mandar(req, res);
});

//Recebendo os dados do html e direcionando para a função votar de votoController.js
router.post("/votar/:idUsuario", function (req, res) {
    votoController.votar(req, res);
})

router.post("/autenticar", function (req, res) {
    votoController.entrar(req, res);
});

module.exports = router;