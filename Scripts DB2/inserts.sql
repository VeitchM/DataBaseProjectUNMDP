INSERT INTO Idioma(lengua) VALUES 
('Español'),
('Frances'), 
('Aleman'),
('Ruso'), 
('Ingles');

INSERT INTO Autor(nombre_y_apellido, nombre_de_fantasia, fecha_de_nacimiento, biografia) VALUES
    ('Fiódor Dostoyevski','El dosto', '1821-10-30','Bibliografia'),
    ('Jane Austen','Jane A.', '1790-11-15','Bibliografia'),
    ('Giovanni Boccaccio','no posee', '1349-01-25','Bibliografia'),
    ('Jorge Luis Borges','no posee', '1899-08-24','Bibliografia'),
    ('Emily Bronte','EB', '1847-09-30','Bibliografia'),
    ('Antón Chéjov','Chijov', '1886-06-30','Bibliografia'),
    ('Juan Rulfo','JRuf', '1955-09-12','Bibliografia'),
    ('Salman Rushdie','Salman', '1981-04-01','Bibliografia'),
    ('William Shakespeare','WS', '1603-10-30','Bibliografia'),
    ('Lev Tolstói','no posee', '1865-07-30','Bibliografia'),
    ('Mark Twain','Symphony', '1885-10-30','Bibliografia'),
    ('Virginia Woolf','Virgin', '1927-12-20','Bibliografia'),
    ('Robert Bly','no posee', '1942-01-12','Bibliografia'),
    ('Martha Cerda','MC', '1970-06-14','Bibliografia'),
    ('Hans Magnus Enzensberger','Hans M', '1960-09-05','Bibliografia'),
    ('Jon Fosse','JFO', '1963-04-05','Bibliografia'),
    ('David Grossman','no posee', '1935-10-30','Bibliografia'),
    ('Claudio Magris','Claudette', '1939-08-27','Bibliografia'),
    ('Norman Mailer','TheNorman', '1890-11-18','Bibliografia'),
    ('Graham Swift','TheGraham', '1941-08-13','Bibliografia'),
    ('Fay Weldon','no posee', '1996-10-30','Bibliografia'),
    ('Ben Okri','no posee', '1935-01-21','Bibliografia'),
    ('Orhan Pamuk','Orhpjam', '1969-08-27','Bibliografia'),
    ('Susan Sontag','Sontag', '1990-11-18','Bibliografia'),
    ('Antonio Tabucchi','Antonytabach', '1961-04-23','Bibliografia'),
    ('Kirsten Thorup','no posee', '1966-10-30','Bibliografia'),
    ('Ernesto Sabato', 'Sabatito', '1911-7-24', 'Bibliografia');


INSERT INTO Editorial(nombre,direccion,telefono) VALUES 
('Penguin', 'Carrera 7a No 75-51. Piso 7mo, Bogota, Colombia','(57-1)743-0700'),
('Albrematica SA','Tucuman 1440 Buenos Aires', '1143712806'),
('Albrematica SA','Tucuman 1440 Buenos Aires', '1143712806'),
('Impregraf Editora E Impresora Srl','R. Perez 3141,  Buenos Aires ', '1145456690'),
('albatros','J.Salguero 2745,  Buenos Aires', '1143712804'),
('editorialbrujas','Tucuman 1440 Buenos Aires', '1143712806'),
('Editorial Almuzara Sl','Tucuman 1950 Buenos Aires', '1143233806'),
('Editorial Planeta', 'Av. Independencia, C.A.B.A., Argentina', '(11) 465-4555');

Insert into Libro(titulo, editorial_id, idioma_id) VALUES
    ('Stepánchikovo y sus habitantes', 2, 1),
    ('Stepánchikovo y sus habitantes', 1, 4),
    ('Sobre heroes y tumbas', 2, 1),
    ('Ficciones', 5, 1),
    ('Don Quijote de la Mancha', 6, 1),
    ('El ruido y la furia', 8, 5),
    ('La educación sentimental', 8, 2),
    ('El amor en los tiempos del cólera', 4, 1),
    ('Almas muertas', 1, 4),
    ('El viejo y el mar', 3, 5),
    ('Relatos cortos', 3, 3),
    ('El proceso', 7, 3),
    ('Hijos y amantes', 1, 5),
    ('La riqueza de las naciones', 4, 1),
    ('Poemas', 2, 2),
    ('Viaje al fin de la noche', 3, 4),
    ('Don Quijote de la Mancha', 2, 5),
    ('Los cuentos de Canterbury', 1, 4),
    ('Relatos cortos', 5, 3),
    ('Nostromo', 4, 1),
    ('Grandes Esperanzas', 5, 1),
    ('Jacques el fatalista', 5, 2),
    ('Berlin Alexanderplatz', 2, 1),
    ('Crimen y castigo', 3, 5),
    ('El idiota', 4, 1),
    ('Los endemoniados', 4, 2),
    ('Los hermanos Karamazov', 4, 2),
    ('Middlemarch', 4, 1),
    ('El hombre invisible', 5, 4),
    ('Medea', 5, 1),
    ('El ruido y la furia', 5, 1),
    ('Madame Bovary', 5, 4),
    ('La educación sentimental', 2, 5),
    ('Romancero gitano', 2, 5),
    ('Cien años de soledad', 1, 2),
    ('El amor en los tiempos del cólera', 1, 3),
    ('Fausto', 1, 1),
    ('Almas muertas', 3, 1),
    ('El tambor de hojalata', 4, 2),
    ('Gran Sertón: Veredas', 3, 4),
    ('Ilíada', 5, 3),
    ('La partícula divina', 8,5),
    ('El pequeño libro de la teoría de cuerdas', 8, 5),
    ('100 cosas sobre física y física cuántica', 5, 4),
    ('El Universo elegante', 7, 4),
    ('Astrofísica para gente con prisas', 7, 4),
    ('Física para dummies', 4, 1),
    ('Seis piezas fáciles', 5, 1);

INSERT INTO escribe(autor_id, libro_id) VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 5),
    (5, 6),
    (6, 7),
    (7, 8),
    (8, 9),
    (9, 10),
    (10, 11),
    (10, 12),
    (11, 13),
    (12, 14),
    (13, 15),
    (14, 16),
    (15, 17),
    (16, 18),
    (17, 19),
    (18, 20),
    (19, 21),
    (20, 22),
    (21, 23),
    (22, 24),
    (22, 25),
    (22, 26),
    (22, 27),
    (23, 28),
    (17, 29),
    (18, 30),
    (26, 31),
    (1, 32),
    (13, 33),
    (20, 34),
    (21, 35),
    (23, 36),
    (19, 37),
    (13, 38),
    (7, 39),
    (6, 40),
    (15, 41),
    (14, 42),
    (12, 43),
    (24, 44),
    (26, 45),
    (21, 46),
    (13, 47),
    (11, 48); 


INSERT INTO Sector(descripcion) VALUES
    ('Fondo de la biblioteca'),
    ('En el medio'),
    ('Cerca de la entrada'),
    ('Cerca del aula de lectura'),
    ('Parte Superior estanteria central'),
    ('Parte inferior estanteria central'),
    ('Sobre las repisas del fondo de la biblioteca'),
    ('Sobre la pared que da al aula de lectura');

INSERT INTO Estanteria(numero_estanteria, sector_id) VALUES
    (1,1),
    (1,2),
    (1,3),
    (1,4),
    (1,5),
    (1,6),
    (1,7),
    (2,1),
    (2,2),
    (2,3),
    (2,4),
    (2,5),
    (2,6),
    (2,7),
    (3,1),
    (3,2),
    (3,3),
    (3,4),
    (3,5),
    (3,6),
    (3,7),
    (4,1),
    (4,2),
    (4,3),
    (4,4),
    (4,5),
    (4,6),
    (4,7),
    (5,1),
    (5,2),
    (5,3),
    (5,4),
    (5,5),
    (5,6),
    (5,7),
    (6,1),
    (6,2),
    (6,3),
    (6,4),
    (6,5),
    (6,6),
    (6,7);


INSERT INTO Edicion(libro_id, isbn, indice, fecha_de_publicacion) VALUES
    (1,'123-4-56-789101-2','presentacion->1,  capitulo1->2 , capitulo2->3', '1997-10-11'),
    (1,'114-5-67-891016-1','presentacion->1,  capitulo1->2 , capitulo2->3', '1980-7-9'),
    (2,'005-6-78-910234-5','presentacion->1,  capitulo1->2 , capitulo2->3', '2007-1-12'),
    (3,'446-6-78-910234-1','presentacion->1,  capitulo1->2 , capitulo2->3', '2008-10-17'),
    (4,'341-6-78-917894-3','presentacion->1,  capitulo1->2 , capitulo2->3', '2014-11-22'),
    (5,'123-6-78-132134-8','presentacion->1,  capitulo1->2 , capitulo2->3', '2007-12-15'),
    (6,'132-6-78-897984-4','presentacion->1,  capitulo1->2 , capitulo2->3', '1999-9-3'),
    (7,'888-6-78-910234-1','presentacion->1,  capitulo1->2 , capitulo2->3', '1997-5-2'),
    (8,'123-6-78-910234-5','presentacion->1,  capitulo1->2 , capitulo2->3', '1996-5-1'),
    (9,'376-6-78-910234-9','presentacion->1,  capitulo1->2 , capitulo2->3', '2001-2-9'),
    (10,'902-6-78-910234-4','presentacion->1,  capitulo1->2 , capitulo2->3', '2017-4-10'),
    (11,'123-9-78-910234-5','presentacion->1,  capitulo1->2 , capitulo2->3', '2010-9-30'),
    (12,'825-5-78-910234-7','presentacion->1,  capitulo1->2 , capitulo2->3', '2009-1-20'),
    (13,'888-1-78-910234-5','presentacion->1,  capitulo1->2 , capitulo2->3', '2009-10-11'),
    (14,'123-2-56-789101-2','presentacion->1,  capitulo1->2 , capitulo2->3', '1997-10-11'),
    (15,'124-5-67-891016-1','presentacion->1,  capitulo1->2 , capitulo2->3', '1980-7-9'),
    (16,'005-6-38-910234-5','presentacion->1,  capitulo1->2 , capitulo2->3', '2007-1-12'),
    (17,'446-6-58-910234-1','presentacion->1,  capitulo1->2 , capitulo2->3', '1991-09-02'),
    (18,'341-6-79-917894-3','presentacion->1,  capitulo1->2 , capitulo2->3', '1998-03-08'),
    (19,'123-6-80-132134-8','presentacion->1,  capitulo1->2 , capitulo2->3', '2007-12-30'),
    (20,'132-6-81-897984-4','presentacion->1,  capitulo1->2 , capitulo2->3', '1999-9-16'),
    (21,'888-6-82-910234-1','presentacion->1,  capitulo1->2 , capitulo2->3', '1997-5-28'),
    (22,'256-6-78-910234-5','presentacion->1,  capitulo1->2 , capitulo2->3', '1996-5-16'),
    (23,'257-6-78-910234-9','presentacion->1,  capitulo1->2 , capitulo2->3', '2001-2-9'),
    (24,'258-6-78-910234-4','presentacion->1,  capitulo1->2 , capitulo2->3', '1996-5-30'),
    (25,'259-6-78-910234-5','presentacion->1,  capitulo1->2 , capitulo2->3', '1998-9-30'),
    (26,'300-6-78-910234-7','presentacion->1,  capitulo1->2 , capitulo2->3', '2001-1-20'),
    (27,'888-6-78-910235-5','presentacion->1,  capitulo1->2 , capitulo2->3', '2010-10-11'),
    (28,'123-4-56-789136-2','presentacion->1,  capitulo1->2 , capitulo2->3', '2005-10-11'),
    (29,'114-5-67-891037-1','presentacion->1,  capitulo1->2 , capitulo2->3', '1980-7-9'),
    (30,'005-6-78-910238-5','presentacion->1,  capitulo1->2 , capitulo2->3', '2010-1-12'),
    (31,'446-6-78-910239-1','presentacion->1,  capitulo1->2 , capitulo2->3', '2020-11-20'),
    (32,'341-6-78-917840-3','presentacion->1,  capitulo1->2 , capitulo2->3', '2014-11-25'),
    (33,'123-1-90-132134-8','presentacion->1,  capitulo1->2 , capitulo2->3', '2007-01-19'),
    (34,'132-6-91-897984-4','presentacion->1,  capitulo1->2 , capitulo2->3', '1990-9-3'),
    (35,'888-6-92-910234-1','presentacion->1,  capitulo1->2 , capitulo2->3', '1977-5-2'),
    (36,'123-6-93-910234-5','presentacion->1,  capitulo1->2 , capitulo2->3', '1966-5-1'),
    (37,'376-6-94-910234-9','presentacion->1,  capitulo1->2 , capitulo2->3', '2002-2-9'),
    (38,'902-6-95-910234-4','presentacion->1,  capitulo1->2 , capitulo2->3', '2003-4-10'),
    (39,'123-6-96-910234-5','presentacion->1,  capitulo1->2 , capitulo2->3', '2013-9-30'),
    (40,'825-6-98-910234-7','presentacion->1,  capitulo1->2 , capitulo2->3', '2020-1-20'),
    (41,'888-6-78-846321-5','presentacion->1,  capitulo1->2 , capitulo2->3', '1996-10-11'),
    (42,'446-6-78-654615-1','presentacion->1,  capitulo1->2 , capitulo2->3', '1995-10-17'),
    (43,'341-6-78-998799-3','presentacion->1,  capitulo1->2 , capitulo2->3', '2007-11-22'),
    (44,'132-6-78-897787-4','presentacion->1,  capitulo1->2 , capitulo2->3', '2006-9-3'),
    (45,'888-6-78-921231-1','presentacion->1,  capitulo1->2 , capitulo2->3', '2008-5-2'),
    (46,'123-6-78-000012-5','presentacion->1,  capitulo1->2 , capitulo2->3', '1965-5-1'),
    (47,'376-6-78-948546-9','presentacion->1,  capitulo1->2 , capitulo2->3', '2001-2-3'),
    (48,'902-6-78-998978-4','presentacion->1,  capitulo1->2 , capitulo2->3', '2017-2-12');

INSERT INTO contiene(numero_estanteria,    sector_id,edicion_id) VALUES
(1,2,3),
(2,3,1),
(3,1,2),
(2,3,4),
(4,4,5),
(6,7,6),
(6,1,7),
(5,5,8),
(5,6,9),
(3,1,10),
(2,3,11),
(4,4,12),
(6,7,13),
(1,2,14),
(2,3,15),
(3,1,16),
(2,3,17),
(4,4,18),
(6,1,19),
(6,2,20),
(5,3,21),
(5,4,22),
(3,5,23),
(2,6,24),
(4,7,25),
(6,7,26),
(1,2,27),
(2,3,28),
(3,1,29),
(2,3,30),
(4,4,31),
(6,7,32),
(6,1,33),
(5,5,34),
(5,6,35),
(3,1,36),
(2,3,37),
(4,4,38),
(6,7,39),
(1,2,40),
(2,3,41),
(3,1,42),
(2,3,43),
(4,4,44),
(6,7,45),
(6,1,46),
(5,5,47),
(5,6,48);

INSERT INTO Tema(descripcion_tema) VALUES
('Mecanica de Fluidos'),
('Estatica del Solido'),
('Fisica'),
('Base de Datos'),
('Literatura'),
('Existencialismo'),
('Nihilismo'),
('Politica');

INSERT INTO  esta_relacionado_a(edicion_id,tema_id) VALUES
(1, 5),
(2, 5),
(3, 7),
(4, 8),
(5, 1),
(6, 2),
(7, 3),
(8, 4),
(9, 5),
(10, 6),
(11, 7),
(12, 8),
(13, 1),
(14, 2),
(15, 3),
(16, 4),
(17, 5),
(18, 6),
(19, 7),
(20, 8),
(21, 1),
(22, 2), 
(23, 3),
(24, 4),
(25, 5),
(26, 6),
(27, 7),
(28, 8),
(29, 1),
(30, 2),
(31, 3),
(32, 4),
(33, 5),
(34, 6),
(35, 7),
(36, 8),
(37, 1),
(38, 2),
(39, 3),
(40, 4),
(41, 5),
(42, 6),
(43, 7),
(44, 8),
(45, 1),
(46, 2),
(47, 3),
(48, 4);

INSERT INTO Palabra_Clave(palabra) VALUES
('gato'),
('cuántico'),
('ciego'),
('datos'),
('interna'),
('cuadratico'),
('ambiente'),
('ginematica'),
('graficas'),
('matematicos'),
('vida'),
('nucleo'),
('sociedad'),
('institucion'),
('individuo'),
('familia'),
('historia'),
('socializacion'),
('aprendizaje'),
('lenguaje'),
('creencias'),
('principios'),
('sociologia'),
('economia'),
('edad'),
('Crecimiento'),
('politica'),
('informatica'),
('trabajo'),
('educacion'),
('medicina'),
('ingenieria'),
('bases'),
('conocimiento'),
('subsidio'),
('higiene'),
('Seguridad');

INSERT INTO tiene_palabras_que_son(edicion_id, palabra_clave_id) VALUES
    (1,28),
    (2,35),
    (3,26),
    (4,32),
    (5,21),
    (6,30),
    (7,21),
    (8,31),
    (9,26),
    (10,13),
    (11,12),
    (12,13),
    (13,26),
    (14,35),
    (15,24),
    (16,36),
    (17,27),
    (18,28),
    (19,23),
    (20,33),
    (21,2),
    (22,3),
    (23,21),
    (24,31),
    (25,17),
    (26,18),
    (27,19),
    (28,32),
    (29,22),
    (30,3),
    (31,2),
    (32,1),
    (33,1),
    (34,11),
    (35,9),
    (36,8),
    (37,7),
    (38,6),
    (39,5),
    (40,4),
    (41,2),
    (42,8),
    (43,8),
    (44,9),
    (45,16),
    (46,15),
    (47,14),
    (48,31);   

INSERT INTO Ejemplar(numero_ejemplar,edicion_id, estado_del_ejemplar) VALUES
(1,1, 'Sin página final'),
(1,2, 'Con hoja dos manchada'),
(1,3, 'Bueno'),
(1,4, 'Sin página final'),
(1,5, 'Con hoja dos manchada'),
(1,6, 'muy malo'),
(1,7, 'se encuentra escrito'),
(1,8, 'Con hoja cinco rota'),
(1,9, 'excelentes condiciones'),
(1,10, 'Sin indice'),
(1,11, 'Con tapas dañadas'),
(1,12, 'Bueno'),
(1,13, 'Buen estado'),
(1,14, 'Falta ultimo capitulo'),
(1,15, 'Bueno, aunque con manchas'),
(1,16, 'Regular'),
(1,17, 'escrito con lapicera'),
(1,18, 'manchado con mate'),
(1,19, 'escrito con fibron'),
(1,20, 'Faltan 10 hojas capitulo 5'),
(1,21, 'Excelentes condiciones'),
(1,22, 'Sin página final'),
(1,23, 'Con hoja dos manchada'),
(1,24, 'Bueno'),
(1,25, 'Sin página final'),
(1,26, 'Excelentes condiciones'),
(1,27, 'Excelentes condiciones'),
(1,28, 'Excelentes condiciones'),
(1,29, 'Con hoja dos manchada'),
(1,30, 'Mal estado'),
(1,31, 'Mal estado'),
(1,32, 'Con hoja diez manchada con cafe'),
(1,33, 'Estado Regular'),
(1,34, 'Estado Regular'),
(1,35, 'Con hojas rotas'),
(1,36, 'Sucio'),
(1,37, 'Pegado con cinta'),
(1,38, 'Tapas Descocidas'),
(1,39, 'Bueno'),
(1,40, 'Sin página final'),
(1,41, 'Con hojas manchadas'),
(1,42, 'Buenas condiciones'),
(1,43, 'Sucio'),
(1,44, 'Pegado con cinta'),
(1,45, 'Tapas Descocidas'),
(1,46, 'Bueno'),
(1,47, 'Sin página final'),
(1,48, 'Con hojas manchadas'),
(2,1, 'Sin página final'),
(2,2, 'Con hoja dos manchada'),
(2,3, 'Bueno'),
(2,4, 'Sin página final'),
(2,5, 'Con hoja dos manchada'),
(2,6, 'muy malo'),
(2,7, 'se encuentra escrito'),
(2,8, 'Con hoja cinco rota'),
(2,9, 'excelentes condiciones'),
(2,10, 'Sin indice'),
(2,11, 'Con tapas dañadas'),
(2,12, 'Bueno'),
(2,13, 'Buen estado'),
(2,14, 'Falta ultimo capitulo'),
(2,15, 'Bueno, aunque con manchas'),
(2,16, 'Regular'),
(2,17, 'escrito con lapicera'),
(2,18, 'manchado con mate'),
(2,19, 'escrito con fibron'),
(2,20, 'Faltan 10 hojas capitulo 5'),
(2,21, 'Excelentes condiciones'),
(2,22, 'Sin página final'),
(2,23, 'Con hoja dos manchada'),
(2,24, 'Bueno'),
(2,25, 'Sin página final'),
(2,26, 'Excelentes condiciones'),
(2,27, 'Excelentes condiciones'),
(2,28, 'Excelentes condiciones'),
(2,29, 'Con hoja dos manchada'),
(2,30, 'Mal estado'),
(2,31, 'Mal estado'),
(2,32, 'Con hoja diez manchada con cafe'),
(2,33, 'Estado Regular'),
(2,34, 'Estado Regular'),
(2,35, 'Con hojas rotas'),
(2,36, 'Sucio'),
(2,37, 'Pegado con cinta'),
(2,38, 'Tapas Descocidas'),
(2,39, 'Bueno'),
(2,40, 'Sin página final'),
(2,41, 'Con hojas manchadas'),
(2,42, 'Buenas condiciones'),
(2,43, 'Sucio'),
(2,44, 'Pegado con cinta'),
(2,45, 'Tapas Descocidas'),
(2,46, 'Bueno'),
(2,47, 'Sin página final'),
(2,48, 'Con hojas manchadas'),
(3,1, 'Sin página final'),
(3,2, 'Con hoja dos manchada'),
(3,3, 'Bueno'),
(3,4, 'Sin página final'),
(3,5, 'Con hoja dos manchada'),
(3,6, 'muy malo'),
(3,7, 'se encuentra escrito'),
(3,8, 'Con hoja cinco rota'),
(3,9, 'excelentes condiciones'),
(3,10, 'Sin indice'),
(3,11, 'Con tapas dañadas'),
(3,12, 'Bueno'),
(3,13, 'Buen estado'),
(3,14, 'Falta ultimo capitulo'),
(3,15, 'Bueno, aunque con manchas'),
(3,16, 'Regular'),
(3,17, 'escrito con lapicera'),
(3,18, 'manchado con mate'),
(3,19, 'escrito con fibron'),
(3,20, 'Faltan 10 hojas capitulo 5'),
(3,21, 'Excelentes condiciones'),
(3,22, 'Sin página final'),
(3,23, 'Con hoja dos manchada'),
(3,24, 'Bueno'),
(3,25, 'Sin página final'),
(3,26, 'Excelentes condiciones'),
(3,27, 'Excelentes condiciones'),
(3,28, 'Excelentes condiciones'),
(3,29, 'Con hoja dos manchada'),
(3,30, 'Mal estado'),
(3,31, 'Mal estado'),
(3,32, 'Con hoja diez manchada con cafe'),
(3,33, 'Estado Regular'),
(3,34, 'Estado Regular'),
(3,35, 'Con hojas rotas'),
(3,36, 'Sucio'),
(3,37, 'Pegado con cinta'),
(3,38, 'Tapas Descocidas'),
(3,39, 'Bueno'),
(3,40, 'Sin página final'),
(3,41, 'Con hojas manchadas'),
(3,42, 'Buenas condiciones'),
(3,43, 'Sucio'),
(3,44, 'Pegado con cinta'),
(3,45, 'Tapas Descocidas'),
(3,46, 'Bueno'),
(3,47, 'Sin página final'),
(3,48, 'Con hojas manchadas');

INSERT INTO Lector(nombre_y_apellido, telefono, cuil) VALUES
('MATIAS VEITCH','+5492255508047','20-0025648-8'),
('EZEQUIEL POSADA', '+5492235456454', '20-0025648-9'),
('AGUSTINA PIERONI','+549223505722','27-39780062-4'),
('JUAN QUINTEROS', '+549223456791', '20-34567891-0'),
('GUSTAVO RODRIGUEZ', '+549113678104', '20-5678910-1'),
('NORBERTO FUENTES', '+549223875641', '20-56789451-2'),
('ABUGAUCH NATALI SOLANGE', '49226648511', '23-40921637-4'),
('ACOTTO ABRIL', '54922661776', '27-40772749-0'),
('ACUÑA AYELEN LAURA', '54926622814', '27-42384282-8'),
('ALANIZ CARLA', '54922667804', '20-39073094-3'),
('ALVAREZ FABIANA ANDREA', '59226620515', '27-39494923-3'),
('ALVAREZ ANRIQUE PAMELA SOLEDAD', '54922679630', '27-36631583-2'), 
('BARREDA PEREZ MILENKA CELESTE', '54922632408', '20-95736424-2'),
('BARRERA LUDMILA AYELEN', '54922662160', '27-42336657-0'),
('BAYARRI ALBORNOZ JULIETA', '54922663901', '27-36433008-7'),
('BORELLO FLORENCIA LUCIA', '54922665315', '27-41762269-7'),
('BORLA ROMINA', '54922390672', '20-28425992-1'), 
('BULVA ARGUELLO VIRGINIA', '54922359845', '27-23195639-0'),
('BUSTOS MARIANA SOLEDAD', '54922303833', '27-40685744-7'), 
('CABRERA ANGEL FRANCISCO', '54923388744', '27-42895342-3'),
('CABRERA SILVA KEVIN NAHUEL', '54223146042', '27-40109407-0'), 
('CALDERON LOURDES IVANA', '54923655705', '27-42048451-3'), 
('CALDERON BAUTISTA ABIGAIL', '549223506200', '24-42337791-3'),
('CANCHO OCHOA WALDYR', '549223349737', '27-41827731-4'),
('CARNERO MAXIMILIANO ARIEL', '4923023583', '27-40684133-8'), 
('CARRIZO MARISA ROXANA', '54922382259', '27-41338816-9'),
('CEBALLOS ALICIA DEL CARMEN', '54923128995', '23-40295782-4'), 
('CHAVEZ LEONELA SABRINA', '54922303303', '20-32407271-4'),
('DOMINGUEZ MARIA NATALIA', '54922968082', '27-41625025-7'),
('ECHENIQUE BRIAN EMANUEL', '54923655448', '20-38747220-8'),
('ENRIQUE CASA VIRGINIA', '54922079197', '27-32926356-3'),
('FERNANDEZ MALDONADO', '54922333016', '20-42641710-4'),
('FUENTES NAHUEL AGUSTIN', '54223209267', '20-42691710-4'),
('GALLARDO ROCIO LUDMILA', '54923407163', '27-42227180-0'),
('GARCIA FACUNDO DANIEL', '54916949712', '27-41522129-6'),
('GOMEZ CRISTIAN DAVID', '54912228817', '27-36431942-3'),
('HERRERA CRISTIAN ALEJANDRO', '54911948216', '20-47847110-4'),
('LEDESMA NORMA BEATRIZ', '54911393578', '27-42218160-7'),
('MARTINEZ CUETTI SABRINA', '54911813351',    '27-42433367-2'), 
('MORENO MARIA DE LOS ANGELES', '54917346426', '27-34222305-9'),
('MORENO LUSERO YUHANNA', '54911644608', '20-41846362-8'),
('NIETO MELANIE ABIGAIL', '54911917011', '27-42439267-2'), 
('OCAMPO GIULIANA', '54911244500', '27-34636305-9'),
('PADILLA DAVID ALEJANDRO', '59119543708',    '20-41666362-8'),
('PANCERA IARA ANABELA', '54925868572', '20-41546362-8'),
('PEIRONE ANAHI BELEN', '54925308246', '27-42412267-2'),
('PEREZ DANIELA ARIANA', '59225990045', '27-34221205-9'),
('RAMIREZ GONZALEZ BELEN', '54922659688', '20-38777220-8'),
('ROLDAN CARLOS ALBERTO', '54922183951', '27-38026356-3'), 
('TABORDA PALOMA MAGALI', '54925234632', '20-42681710-4'),
('TORRES EVELYN AYELEN', '54925897797', '20-42696710-4'),
('VANDEVENDES ALEXIS JAVIER', '54922539088', '27-42227800-0'),
('VILLAREAL JORGE JEREMIAS', '54922578851', '27-41802129-6'), 
('ZAMUDIO ROCIO ANTONELLA', '54922504368', '27-36441942-3');



INSERT INTO fue_consultado_por(fecha_consulta, hora_consulta, hora_devolucion, lector_id, numero_ejemplar, edicion_id) VALUES
    ('2021-11-18','18:15:23','19:25:12',11,1,7),
    ('2021-11-18','15:32:54','18:21:40',15,1,9),
    ('2021-11-17','15:52:50','18:21:40',21,1,12),
    ('2021-11-16','18:40:13','19:30:14',31,1,15),
    ('2021-11-15','17:10:23','19:25:12',13,1,39),
    ('2021-11-15','16:00:54','18:21:40',19,1,40),
    ('2021-09-9','15:32:54','18:21:40',1,1,1),
    ('2021-08-9','15:52:50','18:21:40',2,1,3),
    ('2021-08-9','18:40:13','19:30:14',3,1,1),
    ('2021-09-9','18:45:23','19:25:12',10,1,2),
    ('2021-11-9','15:32:54','18:17:40',19,1,11),
    ('2021-11-9','15:52:50','18:23:40',2,1,33),
    ('2021-11-9','18:40:13','19:30:14',3,1,12),
    ('2021-10-9','18:15:23','19:25:12',11,1,20),
    ('2021-10-9','15:32:54','18:21:40',15,1,11),
    ('2021-10-9','15:52:50','18:21:40',21,1,33),
    ('2021-10-9','18:40:13','19:30:14',31,1,10),
    ('2021-10-9','17:10:23','19:25:12',13,1,21),
    ('2021-10-9','16:00:54','18:21:40',19,1,16),
    ('2021-10-9','18:36:50','19:21:40',22,1,33),
    ('2021-10-9','18:22:13','19:30:14',14,1,11),
    ('2021-10-9','19:58:23','20:25:12',11,1,20);

INSERT INTO Alumno (lector_id, libreta_universitaria) VALUES
    (1,'Materias Aprobadas 3 , Nota: 7,8,9 , Materias habilitadas 2'),
    (2,'Materias Aprobadas 2 , Nota: 10,9 , Materias habilitadas 1'),
    (3,'Materias Aprobadas 1 , Nota: 7 , Materias habilitadas 4'),
    (4,'Materias Aprobadas 12 , Nota: 7,8,9,7,8,9,9,8,7,8,9,7 , Materias habilitadas 2'),
    (5,'Materias Aprobadas 5 , Nota: 10,9,6,7,8 , Materias habilitadas 1'),
    (6,'Materias Aprobadas 1 , Nota: 7 , Materias habilitadas 4'),
    (7,'Materias Aprobadas 3 , Nota: 7,8,9 , Materias habilitadas 2'),
    (8,'Materias Aprobadas 2 , Nota: 10,9 , Materias habilitadas 1'),
    (9,'Materias Aprobadas 1 , Nota: 7 , Materias habilitadas 4'),
    (10,'Materias Aprobadas 3 , Nota: 7,8,9 , Materias habilitadas 2'),
    (11,'Materias Aprobadas 2 , Nota: 10,9 , Materias habilitadas 1'),
    (12,'Materias Aprobadas 1 , Nota: 7 , Materias habilitadas 4'),
    (13,'Materias Aprobadas 3 , Nota: 7,8,9 , Materias habilitadas 2'),
    (14,'Materias Aprobadas 2 , Nota: 10,9 , Materias habilitadas 1'),
    (15,'Materias Aprobadas 1 , Nota: 7 , Materias habilitadas 4'),
    (16,'Materias Aprobadas 3 , Nota: 7,8,9 , Materias habilitadas 2'),
    (17,'Materias Aprobadas 2 , Nota: 10,9 , Materias habilitadas 1'),
    (18,'Materias Aprobadas 1 , Nota: 7 , Materias habilitadas 4'),
    (19,'Materias Aprobadas 3 , Nota: 7,8,9 , Materias habilitadas 2'),
    (20,'Materias Aprobadas 2 , Nota: 10,9 , Materias habilitadas 1'),
    (21,'Materias Aprobadas 1 , Nota: 7 , Materias habilitadas 4'),
    (22,'Materias Aprobadas 3 , Nota: 7,8,9 , Materias habilitadas 2'),
    (23,'Materias Aprobadas 2 , Nota: 10,9 , Materias habilitadas 1'),
    (24,'Materias Aprobadas 1 , Nota: 7 , Materias habilitadas 4'),
    (25,'Materias Aprobadas 3 , Nota: 7,8,9 , Materias habilitadas 2'),
    (26,'Materias Aprobadas 2 , Nota: 10,9 , Materias habilitadas 1'),
    (27,'Materias Aprobadas 1 , Nota: 7 , Materias habilitadas 4');

 

INSERT INTO Alumno_Egresado(lector_id, fecha_de_egreso) VALUES
    (15, '2019-12-31'),
    (16, '2019-12-31'),
    (17, '2019-12-31'),
    (18, '2019-08-31'),
    (19, '2020-08-15'),
    (20, '2015-12-31'),
    (21, '2016-12-31'),
    (22, '2016-03-09'),
    (23, '2019-12-09'),
    (24, '2019-08-10'),
    (25, '2019-07-31'),
    (26, '2019-12-31'),
    (27, '2019-12-31');

INSERT INTO Docente(lector_id) VALUES
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54);

INSERT INTO Materia (nombre) VALUES
('Seguridad, Higiene y Saneamiento Ambiental'),
('Bases de Datos'),
('Literatura Clásica del siglo XIX'),
('Ingeniería Económica'),
('Ciencias Sociales'),
('Literatura actual'),
('Antropologia'),
('Politica'),
('Sociologia'),
('Mecanica del continuo'),
('Fluidos'),
('Fisica'),
('Historia 1'),
('Historia 2'),
('Historia 3'),
('Urbanismo'),
('Artquitectura'),
('Visual'),
('Metodos Numericos'),
('Fisica 1'),
('Fisica 2'),
('Fisica 3'),
('Fisica Esperimental'),
('Analisis Matematico a'),
('Analisis Matematico b'),
('Analisis Matematico c'),
('Algebra a'),
('Algebra b'),
('Ciencia y tecnologia'),
('Bases de datos 2'),
('Programacion 1'),
('Programacion 2'),
('Programacion 3'),
('Teologia'),
('Lengua clasica'),
('Ciudadania'),
('Fundamentos Mecanicos');



INSERT INTO es_dictada_por (materia_id, lector_id_docente) VALUES
(1, 28),
(2, 29),
(1, 30),
(2, 31),
(1, 32),
(16, 33),
(2, 34),
(3, 35),
(3, 36),
(4, 37),
(4, 38),
(5, 39),
(6, 40),
(7, 41),
(8, 42),
(9, 43),
(7, 44),
(7, 45),
(7, 46),
(10, 47),
(11, 48),
(12, 49),
(13, 50),
(14, 51),
(15, 52),
(16, 53),
(16, 54),
(17, 28),
(17, 29),
(18, 30),
(19, 31),
(20, 32),
(21, 33),
(22, 34),
(22, 35),
(23, 36),
(24, 37),
(25, 38),
(26, 39),
(27, 40),
(27, 41),
(27, 42),
(28, 43),
(29, 44),
(30, 45),
(31, 46),
(31, 47),
(32, 48),
(33, 49),
(34, 50),
(20, 51),
(21, 52),
(36, 53),
(33, 54),
(18, 28);

INSERT INTO es_bibliografia_recomendada_por (edicion_id, materia_id, lector_id_docente) VALUES
(1, 1, 28),
(2, 2, 29),
(10, 1, 30),
(11, 2, 31),
(15, 1, 32),
(12, 16, 33),
(21, 2, 34),
(22, 3, 35),
(23, 3, 36),
(24, 4, 37),
(25, 4, 38),
(17, 5, 39),
(6, 6, 40),
(18, 7, 41),
(19, 8, 42),
(11, 9, 43),
(12, 7, 44),
(14, 7, 45),
(15, 7, 46),
(1, 10, 47),
(16, 11, 48),
(26, 12, 49),
(36, 13, 50),
(16, 14, 51),
(26, 15, 52),
(36, 16, 53),
(15, 16, 54),
(25, 17, 28),
(35, 17, 29),
(31, 18, 30),
(48, 19, 31),
(47, 20, 32),
(46, 21, 33),
(45, 22, 34),
(44, 22, 35),
(44, 23, 36),
(41, 24, 37),
(39, 25, 38),
(38, 26, 39),
(37, 27, 40),
(36, 27, 41),
(35, 27, 42),
(27, 28, 43),
(28, 29, 44),
(29, 30, 45),
(13, 31, 46),
(7, 31, 47),
(8, 32, 48),
(9, 33, 49),
(10, 34, 50),
(31, 20, 51),
(21, 21, 52),
(21, 36, 53),
(23, 33, 54),
(18, 18, 28);

INSERT INTO es_bibliografia_de(edicion_id, materia_id, tipo) VALUES
(1, 1, 'OB'),
(1, 2, 'OP'),
(2, 1, 'OB'),
(3, 2, 'OB'),
(4, 2, 'OB'),
(5, 14, 'OB'),
(6, 22, 'OB'),
(7, 33, 'OP'),
(8, 14, 'OP'),
(9, 15, 'OP'),
(10, 36, 'OB'),
(11, 27, 'OB'),
(12, 18, 'OP'),
(13, 11, 'OP'),
(14, 12, 'OB'),
(15, 3, 'OB'),
(16, 4, 'OB'),
(17, 5, 'OB'),
(18, 16, 'OB'),
(19, 17, 'OP'),
(20, 18, 'OP'),
(21, 21, 'OP'),
(22, 32, 'OP'), 
(23, 33, 'OP'),
(24, 4, 'OB'),
(25, 5, 'OB'),
(26, 36, 'OB'),
(27, 17, 'OB'),
(28, 18, 'OP'),
(29, 10, 'OP'),
(30, 20, 'OP'),
(31, 30, 'OP'),
(32, 14, 'OP'),
(33, 25, 'OP'),
(34, 26, 'OB'),
(35, 27, 'OB'),
(36, 18, 'OB'),
(37, 11, 'OB'),
(38, 12, 'OB'),
(39, 13, 'OP'),
(40, 4, 'OP'),
(41, 5, 'OP'),
(42, 26, 'OP'),
(43, 17, 'OB'),
(44, 18, 'OB'),
(45, 10, 'OB'),
(46, 20, 'OB'),
(47, 30, 'OB'),
(48, 14, 'OB');

INSERT INTO Prestamo (fecha_entrega, fecha_devolucion, fecha_limite, estado_del_ejemplar, edicion_id, numero_ejemplar, lector_id) VALUES
('2021-11-17', NULL, '2021-11-24', 'En mal estado', 13, 1, 11),
('2021-11-16', NULL, '2021-11-23', 'En buen estado', 20, 1, 10),
('2021-11-15', NULL, '2021-11-22', 'Intacto', 18, 1, 21),
('2021-10-15', NULL, '2021-10-22', 'Intacto', 17, 1, 20),
('2021-09-13', NULL, '2021-09-20', 'En buen estado', 15, 1, 21),
('2021-09-23', NULL, '2021-09-30', 'Intacto', 37, 1, 20),
('2020-11-16', '2020-11-18', '2020-11-23', 'En buen estado', 2, 1, 32),
('2020-10-17', '2020-10-28', '2020-10-24', 'En mal estado', 1, 1, 42),
('2019-11-26', '2019-11-30', '2019-12-6', 'En buen estado', 2, 1, 50),
('2020-3-18', '2020-3-13', '2020-3-25', 'En buen estado', 2, 1, 13),
('2020-9-14', '2020-9-15', '2020-9-20', 'Intacto', 3, 1, 2),
('2021-10-07', NULL, '2021-10-14', 'Intacto', 14, 1, 20),
('2021-10-06', NULL, '2021-10-13', 'En mal Estado', 22, 1, 15),
('2021-11-16', NULL, '2021-11-23', 'Intacto', 31, 1, 33),
('2021-10-15', NULL, '2021-10-22', 'Intacto', 39, 1, 12),
('2020-11-16', '2020-11-18', '2020-11-23', 'En buen estado', 25, 1, 40),
('2020-10-17', '2020-10-28', '2020-10-24', 'En mal estado', 18, 1, 18),
('2021-11-09', '2020-11-12', '2021-11-16', 'En buen estado', 27, 1, 19),
('2021-11-17', '2021-11-23', '2021-11-24', 'En mal estado', 27, 1, 20),
('2020-9-14', '2020-9-15', '2020-9-20', 'Intacto', 33, 1, 2);
