const express = require('express');
const app = express();
const morgan = require('morgan');

//settings
app.set('port', process.env.PORT || 3000);
app.set('json spaces', 2);

//middlewares

app.use(morgan('dev')); //ver lo que hace el servidor
app.use(express.urlencoded({extended:false})); //tratar de entender input desde un formulario
app.use(express.json()); 

//routes
app.use(require('./routes/index'));
app.use(require('./routes/movies'));
//starting the server
app.listen(app.get('port'), () => {
    console.log(`Server on port ${3000}`);
});