const express = require ('express');
const app = express();
let server = require('http').Server(app);
//Settings
//app.set('port',process.env.PORT || 3000);
const port = process.env.PORT || 3000;




//acces control Dayis prueba


//fin de acces control Dayis






//Middlewares
app.use(express.json());
//routes
app.use(require('./rutas/music'));

/*app.listen(app.get('port'), () =>{
    console.log(`Server on port ${app.get('port')}`);
});
*/

/*
app.listen(port, () => {
    console.log("App is running on port " + port);
});
*/


server.listen(port, () => {
    console.log("App is running on port " + port);
});



