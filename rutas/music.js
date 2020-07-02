const express=require('express');
const router=express.Router();
const mysqlConection= require('../conexion');

var app = express();
var path = require('path');
var fs = require('fs');
var mediaserver = require('mediaserver');
var multer = require('multer');

//aqui empieza el codigo para mostrar imagenes y audio

var opcionesMulter = multer.diskStorage({
    destination: function(req, file, cb) {
        cb(null, path.join(__dirname, '../audio'))
    },
    filename: function(req, file, cb) {
        cb(null, file.originalname)
    }
});

var upload = multer({
    storage: opcionesMulter
})

app.use(express.static('public'));
app.use('/jquery', express.static(path.join(__dirname, '../node_modules', '../jquery', '../dist')));




//control origin
router.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});




// la ruta debe ser por ejemplo: https://music-sender.herokuapp.com/audio/Michael Jackson Billie Jean.mp3
// y para imagenes lo mismo: https://music-sender.herokuapp.com/imagenes/enrique-cosasdelamor.jpg

router.get('/audio/:nombre', (req,res) =>{
    var cancion = path.join(__dirname, '../audio', req.params.nombre);
    console.log(req.params.nombre);
    mediaserver.pipe(req, res, cancion);
});


router.get('/imagenes/:nombre', (req,res) =>{
    var imagen = path.join(__dirname, '../imagenes', req.params.nombre);
    console.log(req.params.nombre);
    mediaserver.pipe(req, res, imagen);
});


//fin codigo iamgenes y audio









//aqui empiezan las consultas

// Seleccionar TODOS LOS ARTISTAS es la pagina de inicio

router.get('/', (req,res) =>{
    mysqlConection.query('SELECT * FROM artista ORDER BY nombreArt', (err,rows,fields) => {
        if(!err){
            res.json(rows);
        }else{
            console.log(err);
        }
    });
    
});

// AQUI VA EL COUNT ********     SELECCIONA los ALBUNES del artista con ID: algo
router.get('/album/:idArtista', (req,res) =>{
    const {idArtista}= req.params;
    mysqlConection.query('SELECT album.idAlbum,album.nombreAlb,album.imagenAlb,genero.nombreGenero,count(*) as NroCanciones,album.idArtista FROM album,genero,cancion WHERE album.generoID=genero.generoID AND album.idAlbum=cancion.idAlbum AND album.idArtista=? GROUP BY album.idAlbum HAVING count(*)>-1 ORDER BY album.nombreAlb',[idArtista], (err,rows,fields) => {
        if(!err){
            res.json(rows);
        }else{
            console.log(err);
        }
    });
});



// Filtra los artistas con el nombre: algo , se usa en el buscador de artistas
router.get('/artista/:nombreArt', (req,res) =>{
    const {nombreArt}= req.params;
    mysqlConection.query('SELECT * FROM artista WHERE nombreArt like ? ORDER BY nombreArt',['%'+nombreArt+'%'], (err,rows,fields) => {
        if(!err){
            res.json(rows);
        }else{
            console.log(err);
        }
    });
});

//SELECCIONA las canciones del album perteneciente a un artista con IDALBUM: algo
router.get('/cancion/:idAlbum', (req,res) =>{
    const {idAlbum}= req.params;
    mysqlConection.query('SELECT a.nombreAlb,c.idCancion,c.titulo,c.imgCancion,c.audio,c.categoria,c.estrella,c.idAlbum FROM cancion c,album a WHERE c.idAlbum=a.idAlbum AND c.idAlbum=? ORDER BY c.titulo',[idAlbum], (err,rows,fields) => {
        if(!err){
            res.json(rows);
        }else{
            console.log(err);
        }
    });
});

// Muestra todos los genero existentes
router.get('/genero', (req,res) =>{
    mysqlConection.query('SELECT * FROM genero ORDER BY nombreGenero', (err,rows,fields) => {
        if(!err){
            res.json(rows);
        }else{
            console.log(err);
        }
    });
    
});


//Muestra los albumes pertenecientes a un genero con idGenero: algo
router.get('/genero/:idGenero', (req,res) =>{
    const {idGenero}= req.params;
    mysqlConection.query('SELECT album.idAlbum,album.nombreAlb,genero.nombreGenero,album.imagenAlb,genero.generoID FROM album,genero WHERE album.generoID=genero.generoID AND genero.generoID=? ORDER BY album.nombreAlb',[idGenero], (err,rows,fields) => {
        if(!err){
            res.json(rows);
        }else{
            console.log(err);
        }
    });
});


// Muestra todas las canciones por el titulo
router.get('/cancion/nombreCancion/:nombreCan', (req,res) =>{
    const {nombreCan}= req.params;
    mysqlConection.query('SELECT * FROM cancion WHERE titulo like ? ORDER BY titulo',['%'+nombreCan+'%'], (err,rows,fields) => {
        if(!err){
            res.json(rows);
        }else{
            console.log(err);
        }
    });
});


//Mostrar canciones por categoria, se pasa el parametro categoria, por ej categoria: Popular
router.get('/cancion/categoria/:nomCategoria', (req,res) =>{
    const {nomCategoria}= req.params;
    mysqlConection.query('SELECT * FROM cancion WHERE categoria=? ORDER BY titulo',[nomCategoria], (err,rows,fields) => {
        if(!err){
            res.json(rows);
        }else{
            console.log(err);
        }
    });
});

//Muestra los canciones pertenecientes a un genero con idGenero: algo
router.get('/genero/canciones/:idGenero', (req,res) =>{
    const {idGenero}= req.params;
    mysqlConection.query('SELECT a.nombreAlb,c.idCancion,c.titulo,c.imgCancion,c.audio,g.nombreGenero,c.categoria,c.estrella,c.idAlbum FROM album a,genero g,cancion c WHERE a.generoID=g.generoID AND c.idAlbum=a.idAlbum AND g.generoID=? ORDER BY c.titulo',[idGenero], (err,rows,fields) => {
        if(!err){
            res.json(rows);
        }else{
            console.log(err);
        }
    });
});



//mostrar cantidad de canciones por cada album
// router.get('/album/filAlb/:idAlbum', (req, res) => {
//     const {
//         idAlbum
//     } = req.params;
//         mysqlConection.query('SELECT A.nombreAlb,count(*) as NroCanciones FROM album A , cancion CA WHERE A.idAlbum = CA.idAlbum AND A.idAlbum=? GROUP BY A.nombreAlb HAVING count(*)>-1;', [idAlbum], (err, rows, fields) => {
//         if (!err) {
//             res.json(rows);
//         } else {
//             console.log(err);
//         }
//     });
// });

//mostrar cantidad de albunes por cada artista
// router.get('/album/filArt/:idArtista', (req, res) => {
//     const {
//         idArtista
//     } = req.params;
//     mysqlConection.query('SELECT CA.nombreArt,count(*) FROM album A , artista CA WHERE A.idArtista = CA.idArtista AND CA.idArtista=? GROUP BY CA.nombreArt HAVING count(*)>-1;', [idArtista], (err, rows, fields) => {
//         if (!err) {
//             res.json(rows);
//         } else {
//             console.log(err);
//         }
//     });
// });

// mostrar canciones que pertenecen a un genero (a travez del id genero)
// router.get('/album/filGen/:generoID', (req, res) => {
//     const {
//         generoID
//     } = req.params;
//     mysqlConection.query('select genero.nombreGenero, cancion.titulo, artista.nombreArt from album, cancion, genero, artista where album.generoID=genero.generoID and cancion.idAlbum=album.idAlbum and album.idArtista=artista.idArtista and genero.generoID=? group by cancion.titulo;', [generoID], (err, rows, fields) => {
//         if (!err) {
//             res.json(rows);
//         } else {
//             console.log(err);
//         }
//     });
// });



module.exports=router;