const express = require('express');
const app = express();
const mysql = require('mysql2');
const { engine } = require('express-handlebars');



app.engine('handlebars', engine());
app.set('view engine', 'handlebars');
app.set('views', './views');

app.use('/bootstrap', express.static(__dirname+ '/node_modules/bootstrap/dist'))




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
    res.render('index');
});



app.listen(8080);