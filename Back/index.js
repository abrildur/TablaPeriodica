const express = require('express');
const morgan = require('morgan');

const app = express();

//middlewares 
app.use(morgan('dev'));

app.use(express.json({ limit: '50mb'}));

/**methodos http 
 * post: agregar info
 * get : alistar info
 * put : actualizar
 * delete : eliminar
 * similar a -> CRUD BD */

//routes 

app.get('/', (req, res)=>{
    res.json({message:'bienvenido a nuestro primer navegador'});
});
// statics files 

//start

app.listen(3000, ()=> {
    console.log("Servidor esta corriendo en el puerto: ", 3000);
});

