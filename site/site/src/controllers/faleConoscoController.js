var faleConoscoModel = require("../models/faleConoscoModel");

function testar(req, res) {
    console.log("ENTRAMOS NA usuarioController");
    res.json("ESTAMOS FUNCIONANDO!");
}

function listar(req, res) {
    faleConoscoModel.listar().then(function (resultado) {
        // precisamos informar que o resultado voltará para o front-end como uma resposta em json
        res.status(200).json(resultado);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

function enviar(req, res) {
    var descricao = req.body.descricaoServer;
    var email = req.body.emailServer;

    if (descricao == undefined) {
        res.status(400).send("Seu nome está undefined!");
    }
    else if (email == undefined) {
        res.status(400).send("Seu nome está undefined!");
    }

    else {
        faleConoscoModel.enviar(descricao, email)
            .then(
                function (resposta) {
                    res.json(resultado);
                    res.status(200).send("Dúvida enviada com sucesso");
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports = {
    listar,
    enviar,
    testar
}