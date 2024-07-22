--1)Crear tabla
CREATE DATABASE "Enmarcado9DeJulioTest"

--2)Crear usuario, no es nesesario editarlos. (Si se odifican estos datos hay que modificar tambien en app.js)
CREATE USER nombre_usuario WITH PASSWORD 'contraseña_usuario';
ALTER USER nombre_usuario WITH SUPERUSER;

--3)Crear una tabla con texto, números y fechas
CREATE TABLE clientesTest (
    ID SERIAL PRIMARY KEY,
	Ingreso TIMESTAMP,
	Inicio TIMESTAMP,
	Finalizado TIMESTAMP,
    Listo VARCHAR(15),
	Nombre VARCHAR(20),
	Apellido VARCHAR(20),
    Contacto BIGINT,
    Cantidad INTEGER,
    Detalles VARCHAR(300),
    Precio INTEGER,
    Adelanto INTEGER,
    FaltaPagar INTEGER,
    Pagado INTEGER,
    Ganancia INTEGER,
    Entregado VARCHAR(15),
    FechaEntrega TIMESTAMP
);

--4)Insertar datos de ejemplo en la tabla
INSERT INTO clientesTest (ID,Ingreso,Inicio,Finalizado,Listo,Nombre,Apellido,Contacto,Cantidad,Detalles,Precio,Adelanto,FaltaPagar,Pagado,Ganancia,Entregado,FechaEntrega) VALUES
('1','2/3/2022','15/3/2022','5/4/2022','Listo','Rocío','Rendich',549487,'1','Diploma UBA FADU varilla bombé 2 cm blanca. Rearmar con varilla chata 2 cm tizada blanca mate.','2200','1000','1200','1000',NULL,'No lo quiso',NULL),
('2','5/3/2022',NULL,NULL,'Presupuesto','Sebastián','Acuista',549487,'4','80 x 90 cm marco entelado, italiana 3 cm algarrobo. 80 x 70 cm chata 1cm roja, italiana 3cm negro. 50 x 70 cm francesa 2,5 dorada. 45 x 50 cm intaliana 3 cm roble. Anotado en papel.','1700','800','900','1700',NULL,'Pendiente','21/3/2022'),
('3','11/3/2022',NULL,NULL,'Presupuesto','José','Vila',549487,'0','Averiguar por marcos ovalados.',NULL,NULL,'0',NULL,NULL,NULL,NULL),
('4','15/3/2022','9/5/2022','20/5/2022','Listo','María','Cartier',549487,'3','Dos papiros con doble vidrio colocar varilla 2 cm bombé dorada. Y un mapa de hidrografía del Paraná con triple marco varilla 1 cm dorado, varilla entelada de 4 cm y varilla chata de 4 cm chata roble.','3000','3000','0','3000',NULL,'Entregado','15/6/2022'),
('5','15/3/2022','16/3/2022','17/3/2022','Listo','Sebastián','Acuista',549487,'1','Colocar marco 3 cm italiana blanca','1800',NULL,'1800','1800',NULL,'Entregado','17/3/2022'),
('6','16/3/2022','31/3/2022','27/4/2022','Listo','Pablo','Oliver',549487,'2','Armar dos marcos con bolsas de Maíz y Soja.Varilla 3 cm roble.','5000','2000','3000','5000',NULL,'Entregado','20/5/2022'),
('7','17/3/2022','31/3/2022','25/4/2022','Listo','Raúl','Battista',549487,'4','Dos diplomas de la UTN bombé 1 cm roble y dos diplomas de prefectura bombé 1 cm negro.','5600','2000','3600','5600',NULL,'Entregado','20/5/2022'),
('8','17/3/2022','1/4/2022','5/4/2022','Listo','Alejandro','Ramos',549487,'1','Foto de Gendarme. Paspartú y varilla bombé 2 cm.','1300',NULL,'1300','1300',NULL,'Entregado','7/4/2022'),
('9','22/3/2022','22/3/2022','24/3/2022','Listo','Elisa','Pais',549487,'1','Terminar cuadro ya armado de varilla chata 3 cm 40 x 60 cm. ','200',NULL,'0','200',NULL,'Entregado','28/3/2022'),
('10','23/3/2022',NULL,NULL,'No','Graciela','Rearte',549487,'1','Mapa de 100 x 80 cm varilla italiana 3 cm algarrobo y vidrio o acrílico 1 mm.','7500','2000','5500',NULL,NULL,'No',NULL),
('11','23/3/2022','24/3/2022','29/3/2022','Listo','Sofía','Morgana',549487,'1','Pintura de 20 x 40 varilla 1 cm roble.','700','300','400','700',NULL,'Entregado','6/4/2022'),
('12','24/3/2022','5/4/2022','5/4/2022','Listo','Carolina',NULL,549487,'2','Dos láminas A4 de flores y Mi vecino Totoro. Poner doble vidrio y ganchos.','1200','1200','0','1200',NULL,'Entregado','7/4/2022'),
('13','25/3/2022','4/4/2022','6/4/2022','Listo','Salvador','Kuz',549487,'1','Pintura azul del hijo en A4 agregar paspartú y varilla bombé 1 cm roble.','1000','1000','0','1000',NULL,'Entregado','8/4/2022'),
('14','26/3/2022','26/4/2022','27/4/2022','Listo','Ángel','Sánchez',549487,'1','Reparar cuadro de lámina antigua de Ford. Desarmar, limpiar y cambiar forro de atrás.','700',NULL,'700','700',NULL,'Entregado','21/6/2022'),
('15','27/3/2022','3/4/2022','4/4/2022','Listo','María','Piccirilli',549487,'1','Reparar cuadro de papiro con paspartú negro. Desarmar, limpiar y rearmar.','500',NULL,'500','500',NULL,'Entregado','5/4/2022'),
('16','28/3/2022',NULL,NULL,'No','Elisa','Pais',549487,'1','Encargo de cuadro de bombé 3 cm bronce de 40 x 60 cm.','1200','1000','200','1000',NULL,'No',NULL),
('17','29/3/2022','21/4/2022','22/4/2022','Listo','Aldana','Álvarez',549487,'1','Reparar marco y vidrio roto, remplazar vidrio y varilla.','1000',NULL,'1000','1000',NULL,'Entregado','25/4/2022'),
('18','30/3/2022','7/4/2022','8/4/2022','Listo','Rubén','Cellini',549487,'1','Armar marco con tres fotos de cumpleaños con paspartú y varilla negra brillante bombé 1 cm.','1000',NULL,'1000','1000',NULL,'Entregado','8/4/2022')

--5)Establecer el ID en 19 para que se puedan seguir agregando datos
ALTER SEQUENCE clientesTest_id_seq RESTART WITH 19;

--6)Verificar que los datos se hayan insertado correctamente
SELECT * FROM clientesTest

---------------^^^^^luego de tener la base creada^^^^^---------------

--Hacer una selección específica por nombre
SELECT * FROM clientes
	WHERE nombre='Elisa'

--Hacer una selección de precios menores a $1.000s
SELECT * FROM clientes
    WHERE precio>1000
	
--Trabajos primera quincena
SELECT * FROM clientes
	WHERE ingreso<'2022-03-14'

--Trabajos segunda quincena
SELECT * FROM clientes
	WHERE ingreso>'2022-03-14'

--Borrar base de datos
DROP DATABASE

-- Borrar tabla
DROP TABLE

-- Restablecer tabla e ID
ALTER SEQUENCE clientes_id_seq RESTART;
TRUNCATE TABLE clientes;
