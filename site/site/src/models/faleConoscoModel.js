var database = require("../database/config")

function listar() {
    var instrucao = `
        SELECT * FROM FaleConosco;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function enviar(descricao,email) {
    console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function enviar(): ", descricao, email);
    var instrucao = `
        INSERT INTO FaleConosco (descricao, email) VALUES ('${descricao}', '${email}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    enviar,
    listar
};