const express = require('express')
const app = express();
const mysql = require('mysql2')

const conexao = mysql.createConnection
({
    host: 'localhost',
    user: 'root',
    password: 'sua_senha_segura',
    port: 3306,
    database: 'ecommerce_pc'
})

conexao.connect((erro) => 
    {
        if (erro)
        {
            console.error('erro ao conectar ao banco de dados: ', erro);
            return;
        }

        console.log('conexão com o banco de dados estabelecida com sucesso!');

    
    });

app.get ("/", function(req,res)
{
    res.write("sla porra");
    res.end();
});



app.listen(8080);