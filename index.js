import express from "express";
import cors    from "cors";
import FilterRouter from "./src/controllers/filter-controller.js";
import UserRouter from "./src/controllers/users-controller.js"
import CategoriesRouter from "./src/controllers/Categories-controller.js";
import GendersRouter from "./src/controllers/Genders-controller.js"
import CountryRouter from "./src/controllers/Country-controller.js";
import Document_TypesRouter from "./src/controllers/Document_Types-controller.js";
import EducationalStatusRouter from "./src/controllers/EducationalStatus-controller.js";
import EducationalInstitutionsRouter from "./src/controllers/EducationalInstitutions-controller.js";
const app  = express();
const port = 8080;


// Inclusión de los Middlewares
app.use(cors());
app.use(express.json());
// app.use('/front', express.static('public'));
app.use('/api/filter', FilterRouter);
app.use('/api/user', UserRouter);
app.use('/api/category', CategoriesRouter);
app.use('/api/gender', GendersRouter);
app.use('/api/country', CountryRouter);
app.use('/api/document_types', Document_TypesRouter);
app.use('/api/educational_status', EducationalStatusRouter);
app.use('/api/educational_institutions', EducationalInstitutionsRouter);
// app.use(unknownEndpoint);
app.listen(port, () => {
  console.log(`"server" Listening on port ${port}`);
})











































































































































































































































































































// import express from "express"; //hacer npm i express
// import cors from "cors"; //hacer npm i cors 
// import Alumno from "./models/alumno.js"
// import{suma, restar, multiplicar, dividir} from "./modules/matematica.js"
// import {OMDBSearchByPage, OMDBSearchComplete, OMDBGetByImdbID} from "./modules/omdb-wrapper.js"

// const app = express(); 
// const port = 3000;
// //El puerto 3000(http://localhost:3000) //AgregolosMiddlewares 
// app.use(cors());
// //Middleware deCORS
// app.use(express.json());
// //Middleware para parsear y comprender JSON

// // 
// //Aca pongo todos los EndPoints 
// // 
// app.get('/', (req, res) => { //EndPoint"/"
//     res.send('Ya estoy respondiendo!');
// })
// app.get('/saludar/:nombre/', (req, res) => { //EndPoint"/saludar"
//     let variable = req.params.nombre;
//     res.send('Hola: ' + variable) ;
// })

// app.get('/validarfecha/:ano/:mes/:dia', (req, res) => { //EndPoint"/saludar"
//     let ano = req.params.ano;
//     let mes= req.params.mes;
//     let dia= req.params.dia;
//     let fecha = `${ano} - ${mes} - ${dia}` ;
//     let fechaNumero = null;

//     fechaNumero = Date.parse(fecha);
//     if(fechaNumero!=null){
//         res.status(200);
//     }else{
//         res.status(400);
//     }
    
//     res.send(fechaNumero) ;
// })

// app.get('/matematica/sumar', (req, res) => { //EndPoint"/saludar"
//     let n1 = parseInt(req.query.n1);
//     let n2 = parseInt(req.query.n2);
//     let resultado = suma(n1,n2);
//     res.status(200).send('el resultado de la operacion es : ' + resultado);
    
// })

// app.get('/matematica/restar', (req, res) => { //EndPoint"/saludar"
//     let n1 = parseInt(req.query.n1);
//     let n2 = parseInt(req.query.n2);
//     let resultado = restar(n1,n2);
//     res.status(200).send('el resultado de la operacion es : ' + resultado);
    
// })

// app.get('/matematica/multiplicar', (req, res) => { //EndPoint"/saludar"
//     let n1 = parseInt(req.query.n1);
//     let n2 = parseInt(req.query.n2);
//     let resultado = multiplicar(n1,n2);
//     res.status(200).send('el resultado de la operacion es : ' + resultado);
    
// })

// app.get('/matematica/dividir', (req, res) => { //EndPoint"/saludar"
//     let n1 = parseInt(req.query.n1);
//     let n2 = parseInt(req.query.n2);
//     let resultado = dividir(n1,n2);
//     res.status(200).send('el resultado de la operacion es : ' + resultado);
    
// })



// app.get('/omdb/searchbypage', async(req, res) => { //EndPoint"/saludar"
//     let search = req.query.search;
//     let p = req.query.p;

//     let returnStatus = 400;
//     let returnResult = [];

//     try {
//         returnResult = await OMDBSearchByPage(search, p);
//         returnStatus = 200; 
        
//     } catch (error) {
//         console.log(error.message);
//     }
//     res.status(returnStatus).send(returnResult);
    
// })

// app.get('/omdb/searchcomplete', async(req, res) => { //EndPoint"/saludar"
//     let search = req.query.search;

//     let returnStatus = 400;
//     let returnResult = [];

//     try {
//         returnResult = await OMDBSearchComplete(search);
//         returnStatus = 200; 
        
//     } catch (error) {
//         console.log(error.message);
//     }
//     res.status(returnStatus).send(returnResult);
    
// })
    

//  app.get('/omdb/getbyomdbid', async(req, res) => { //EndPoint"/saludar"
//     let imdbID = req.query.imdbID;
// console.log('imdbID', imdbID);
//     let returnStatus = 400;
//     let returnResult = {};

//     try {
//         returnResult = await OMDBGetByImdbID(imdbID);
//         returnStatus = 200; 
        
//     } catch (error) {
//         console.log(error.message);
//     }
//     res.status(returnStatus).send(returnResult);
    
    
// })

// const alumnosArray=[];
// alumnosArray.push(new Alumno("Esteban Dido" ,"22888444",20));
// alumnosArray.push(new Alumno("Matias Queroso","28946255",51));
// alumnosArray.push(new Alumno("Elba Calao" ,"32623391",18));




// app.get('/alumnos', (req, res) => {
//     res.send(alumnosArray) ;
// })


// app.get('/alumnos/:dni', (req, res) => {
//     let dni = req.params.dni;
//     let alumnoEncontrado = alumnosArray.find(alumnosArray => alumnosArray.DNI === dni);


//     if (alumnoEncontrado) {
//         res.status(200).send(alumnoEncontrado);
//     } else {
//         res.status(404).send('Alumno no encontrado');
//     }
// })


// app.post('/alumnos', (req, res) => {
//     alumnosArray.push(new Alumno("Monica Gaduro" ,"11222333",25));
//     res.status(201).send(alumnosArray);
// })


// app.delete('/alumnos', (req, res) => {
//     let dni = req.query.dni;
//     let alumnoIndex = alumnosArray.findIndex(alumnosArray => alumnosArray.DNI === dni);

//     if (alumnoIndex !== -1) {
//         alumnosArray.splice(alumnoIndex, 1);
//         res.status(200).send('Alumno eliminado correctamente');
//     } else {
//         res.status(404).send('Alumno no encontrado');
//     }
// });



// // 
// //Inicio el Server y lo pongo a escuchar.
// // 
// app.listen(port, () => {
//     console.log(`Example app listening on port${port}`)
// })

