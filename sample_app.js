const express = require('express');
const path = require('path');
const app = express();
const PORT = 5050;

// Sirve los archivos estáticos desde la carpeta 'static'
app.use('/static', express.static(path.join(__dirname, 'static')));

// Configura el directorio de plantillas
app.set('views', path.join(__dirname, 'templates'));
app.set('view engine', 'ejs');  // Usaremos EJS como el motor de plantillas

// Ruta principal que renderiza el archivo 'index.ejs'
app.get('/', (req, res) => {

    console.log(req.ip)
    console.log(req.connection.remoteAddress)
    const remoteAddr = req.ip || req.connection.remoteAddress;

    res.render('index',{ remoteAddr });  // Esto buscará el archivo 'index.ejs' en la carpeta 'templates'
});

// Iniciar el servidor
app.listen(PORT, () => {
    console.log(`Servidor escuchando en http://0.0.0.0:${PORT}`);
});