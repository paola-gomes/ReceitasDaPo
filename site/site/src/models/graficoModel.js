var database = require("../database/config")

function listar() {
    var instrucao = `
    select receita,nota from Feedback;
    `;
    return database.executar(instrucao);
}

module.exports = {
    listar
};