// index.js (archivo principal de tu aplicación Node.js)

const express = require('express');
const bodyParser = require('body-parser');
const { Pool } = require('pg');

const app = express();
const port = 3000;
const path = require('path');

// Configuración de bodyParser para procesar datos del formulario
app.use(bodyParser.urlencoded({ extended: true }));

// Configuración de la conexión a la base de datos PostgreSQL
const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'Enmarcado9DeJulio',
    password: 'Juan2712',
    port: 5432,
});

app.set("view engine", "ejs");

app.set('views', path.join(__dirname, 'views'));

// Servir archivos estáticos
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
  res.render('index', { title: 'Página Principal' });
});

// Definir otras rutas
app.get('/formulario', (req, res) => {
  res.render('formulario', { title: 'Gestión de clientes' });
});

// Ruta para manejar los datos del formulario
app.post('/guardar-datos', (req, res) => {
  const {ingreso, inicio, finalizado, nombre, apellido, detalles, contacto} = req.body;
  // Ejecuta la consulta SQL para insertar los datos en la base de datos
  pool.query('INSERT INTO clientes (ingreso, inicio, finalizado, nombre, apellido, detalles, contacto) VALUES ($1, $2, $3, $4, $5, $6, $7)', [ingreso, inicio, finalizado, nombre, apellido, detalles, contacto], (error, results) => {
    if (error) {
      console.log('Error al insertar datos:', error);
      res.send('Error al insertar datos en la base de datos');
    } else {
      console.log('Datos insertados correctamente');
      res.send('Datos insertados correctamente');
    }
  });
});

app.get('/app/basededatos', async (req, res) => {
  try {
      const result = await pool.query('SELECT id, nombre, apellido, TO_CHAR(ingreso, \'YYYY-MM-DD\') AS solo_fecha, TO_CHAR(ingreso, \'HH24:MI\') AS solo_hora, detalles, contacto FROM clientes;');
      res.json(result.rows);
  } catch (err) {
      console.error(err);
      res.status(500).json({ error: 'Error en base de datos.' });
  }
});

// Inicia el servidor
app.listen(port, () => {
  console.log(`Servidor escuchando en http://localhost:${port}`);
});