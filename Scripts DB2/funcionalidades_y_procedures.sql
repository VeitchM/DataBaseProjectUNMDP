--2) (está antes que el 1) porque el 1) necesita las vistas del 2))
CREATE OR Replace VIEW LibroIdTituloAutorEditorial
AS SELECT Libro.Libro_ID, Titulo, nombre AS editorial
        FROM    (SELECT LIBRO_ID, TITULO, editorial_id FROM LIBRO) AS LIBRO 
    
                JOIN (SELECT Nombre, Editorial_id FROM  EDITORIAL e2) AS E ON E.editorial_id= Libro.editorial_id
;

CREATE OR REPLACE VIEW InfoBasicaDeEdicion
AS SELECT Edicion_ID, ISBN, Titulo, Editorial, FECHA_DE_PUBLICACION 
   FROM  LibroIdTituloAutorEditorial JOIN Edicion ON Edicion.LIBRO_ID = LibroIdTituloAutorEditorial.libro_id
;

CREATE OR REPLACE VIEW estaSiendoConsultado
AS 
SELECT * 
FROM fue_consultado_por
WHERE HORA_DEVOLUCION IS NULL
;

CREATE OR REPLACE VIEW estaPrestado
AS
SELECT *
FROM PRestamo
WHERE FECHA_DEVOLUCION IS NULL 
;

CREATE OR REPLACE VIEW enEstanteria
as
SELECT UNIQUE *
FROM (SELECT EDICION_ID, NUMERO_EJEMPLAR FROM EJEMPLAR e )
     EXCEPT SELECT EDICION_ID, NUMERO_EJEMPLAR FROM estaSiendoConsultado
     EXCEPT SELECT EDICION_ID, NUMERO_EJEMPLAR FROM estaPrestado
;

--Si está en estanteria FECHADEDEVOLUCION = null
CREATE OR REPLACE VIEW estadoDeEdiciones
as
SELECT *
        From
            (SELECT edicion_id,numero_ejemplar, 'en Estanteria' AS estado   , NULL AS fechadeDevolucion  FROM EnEstanteria
            UNION SELECT edicion_id,numero_ejemplar, 'Esta Prestado' AS estado, fecha_limite  AS fechaDeDevolucion FROM EstaPrestado WHERE fecha_limite >= CURRENT DATE 
            UNION SELECT edicion_id,numero_ejemplar, 'Esta Prestado con atraso' AS estado, fecha_limite  AS fechaDeDevolucion  FROM EstaPrestado  WHERE fecha_limite < CURRENT DATE 
            UNION SELECT edicion_id,numero_ejemplar, 'Esta siendo Consultado' AS estado, fecha_CONSULTa AS fechaDeDevolucion FROM estaSiendoConsultado WHERE fecha_Consulta = CURRENT DATE
            UNION SELECT edicion_id,numero_ejemplar, 'No se devolvio el dia de consulta' AS estado, fecha_CONSULTa AS fechaDeDevolucion FROM estaSiendoConsultado WHERE fecha_Consulta < CURRENT DATE    );
;

CREATE OR REPLACE PROCEDURE EstadoDeEdicionesLibro (IN libroID int )
DYNAMIC RESULT SETS 1
READS SQL DATA
LANGUAGE SQL
BEGIN
DECLARE rs1 CURSOR WITH RETURN TO CLIENT FOR 
	SELECT ISBN, titulo, editorial, numero_ejemplar, estado, fechaDeDevolucion FROM 
            (SELECT UNIQUE edicion_id FROM edicion  WHERE libro_id=libroID ) AS ediciones
            JOIN INFOBASICADEEDICION ON infobasicaDeEdicion.EDICION_ID = ediciones.EDICION_ID 
            JOIN ESTADODEEDICIONES ON ediciones.EDICION_ID=ESTADODEEDICIONES.edicion_ID;
	OPEN rs1;
END
;


CREATE OR REPLACE FUNCTION EdicionesPorAutor(AutorID int )
RETURNS TABLE (edicion_id int)
LANGUAGE SQL
NO EXTERNAL ACTION
BEGIN ATOMIC
RETURN         SELECT edicion.edicion_id
            FROM (SELECT libro.LIBRO_ID FROM LIBRO JOIN ESCRIBE ON libro.LIBRO_ID=escribe.LIBRO_ID AND autor_id=autorID ) AS libros 
                 JOIN (SELECT edicion_id, libro_id FROM  Edicion) AS edicion ON Libros.libro_id=Edicion.libro_id ;
END
;

CREATE OR replace  PROCEDURE EstadoDeEdicionesAutor (IN autorID int )
DYNAMIC RESULT SETS 1
READS SQL DATA
LANGUAGE SQL
BEGIN
	DECLARE rs1 CURSOR WITH RETURN TO CLIENT FOR 
	SELECT ISBN,titulo,editorial,numero_ejemplar, estado FROM 
            table(edicionesPorAutor(autorID)) AS ediciones
            JOIN INFOBASICADEEDICION ON infobasicaDeEdicion.EDICION_ID = ediciones.EDICION_ID 
            JOIN ESTADODEEDICIONES ON ediciones.EDICION_ID=ESTADODEEDICIONES.edicion_ID;
	OPEN rs1;
END
;

CREATE OR REPLACE PROCEDURE EstadoDeEdicionesTema (IN TemaID int )
DYNAMIC RESULT SETS 1
READS SQL DATA
LANGUAGE SQL
BEGIN
	DECLARE rs1 CURSOR WITH RETURN TO CLIENT FOR 
	SELECT ISBN,titulo,editorial,numero_ejemplar, estado FROM 
            (SELECT edicion_id FROM ESTA_RELACIONADO_A  WHERE esta_relacionado_A.TEMA_ID=temaID) AS ediciones
            JOIN INFOBASICADEEDICION ON infobasicaDeEdicion.EDICION_ID = ediciones.EDICION_ID 
            JOIN ESTADODEEDICIONES ON ediciones.EDICION_ID=ESTADODEEDICIONES.edicion_ID;
	OPEN rs1;
END 
;

CREATE OR REPLACE  PROCEDURE EstadoDeEdicionesRecomendadosPor (IN DocenteID int )
DYNAMIC RESULT SETS 1
READS SQL DATA
LANGUAGE SQL
BEGIN
	DECLARE rs1 CURSOR WITH RETURN TO CLIENT FOR 
	SELECT ISBN,titulo,editorial,numero_ejemplar, estado, fechaDeDevolucion FROM 
            (SELECT edicion_id FROM ES_BIBLIOGRAFIA_RECOMENDADA_POR ebrp  WHERE lector_id_docente=DocenteID ) AS ediciones
            JOIN INFOBASICADEEDICION ON infobasicaDeEdicion.EDICION_ID = ediciones.EDICION_ID 
            JOIN ESTADODEEDICIONES ON ediciones.EDICION_ID=ESTADODEEDICIONES.edicion_ID;
	OPEN rs1;
END 
;

--1)
CREATE OR REPLACE PROCEDURE Prestamos_Vencidos (IN fecha_dada DATE)
DYNAMIC RESULT SETS 1
READS SQL DATA
LANGUAGE SQL
BEGIN
DECLARE rs1 CURSOR WITH RETURN TO CLIENT FOR
SELECT Nombre_Y_Apellido, Telefono, Titulo, Editorial, ISBN, numero_ejemplar
FROM Lector 
     JOIN (SELECT lector_id, edicion_id, numero_Ejemplar FROM Prestamo WHERE fecha_dada > Prestamo.fecha_limite AND Prestamo.fecha_devolucion is NULL) AS PrestamoVencido
     ON Lector.lector_id = PrestamoVencido.lector_id
     JOIN InfoBasicaDeEdicion ON PrestamoVencido.edicion_ID = InfoBasicaDeEdicion.edicion_id;
            OPEN rs1;
END;
--CALL prestamos_vencidos('2021-11-30')

--3) 
CREATE OR REPLACE FUNCTION Prestamos_Mes(IN fecha_dada Date)
RETURNS TABLE (edicion_id INT, numero_ejemplar INT, mes INT, año INT)
LANGUAGE SQL
BEGIN ATOMIC
    RETURN (
        SELECT edicion_id, numero_ejemplar, MONTH(Prestamo.fecha_entrega) AS Mes, YEAR(Prestamo.fecha_entrega) AS Año
        FROM Prestamo
        WHERE YEAR(fecha_dada)  = YEAR(Prestamo.fecha_entrega) AND MONTH(fecha_dada) = MONTH(Prestamo.fecha_entrega)
    );
END
;

CREATE OR REPLACE PROCEDURE Prestamos_Año(IN fecha_dada DATE)
DYNAMIC RESULT SETS 2
LANGUAGE SQL
BEGIN
    DECLARE rs1 CURSOR WITH RETURN TO CLIENT FOR
        SELECT PM.Cantidad_Pedida_Actual, libro.libro_id, Edicion.edicion_id, Libro.TITULO, Edicion.ISBN
        FROM Edicion, Libro,
            (SELECT edicion_id, COUNT(edicion_id) AS Cantidad_Pedida_Actual
               FROM TABLE(Prestamos_Mes(fecha_dada))
            GROUP BY Edicion_id
            ) AS PM
        WHERE Edicion.edicion_id = PM.edicion_id AND Edicion.LIBRO_ID = Libro.LIBRO_ID;

    DECLARE rs2 CURSOR WITH RETURN TO CLIENT FOR
         SELECT PM.Cantidad_Pedida_Anterior, libro.libro_id, Edicion.edicion_id, Libro.TITULO, Edicion.ISBN
        FROM Edicion, Libro,
            (SELECT edicion_id, COUNT(edicion_id) AS Cantidad_Pedida_Anterior
               FROM TABLE(Prestamos_Mes(fecha_dada - 1 YEARS))
            GROUP BY Edicion_id
            ) AS PM
        WHERE Edicion.edicion_id = PM.edicion_id AND Edicion.LIBRO_ID = Libro.LIBRO_ID;

    OPEN rs1;
    OPEN rs2;
END
;
--CALL Prestamos_Año('2021-11-23');


--4) 
CREATE OR REPLACE PROCEDURE lista_lectores_de_autor (autor_variable INT)
DYNAMIC RESULT SETS 1
READS SQL DATA
LANGUAGE SQL
BEGIN
    DECLARE rs1 CURSOR WITH RETURN TO CLIENT FOR
        WITH
            R AS (SELECT DISTINCT lector_id, edicion_id FROM Prestamo),
            S AS (SELECT edicion_id FROM escribe JOIN Edicion ON escribe.libro_id = Edicion.libro_id AND autor_id = autor_variable)

        -- Division SQL
        SELECT DISTINCT R.lector_id FROM R
        WHERE lector_id NOT IN ( SELECT lector_id FROM (
        (SELECT lector_id , edicion_id FROM (SELECT edicion_id FROM S ) AS p CROSS JOIN
        (SELECT DISTINCT lector_id FROM R) AS sp)
        EXCEPT
        (SELECT lector_id , edicion_id FROM R) ) AS r);
    OPEN rs1;
END
;

--Insertar Prestamo Transaction

CREATE OR REPLACE FUNCTION nroEjemplarDisponible(ed INT)
RETURNS INT
    BEGIN
        
        RETURN (SELECT numero_ejemplar
            FROM enEstanteria
            WHERE edicion_id = ed
            FETCH FIRST ROW ONLY);
    END
;

CREATE OR REPLACE FUNCTION getEstado(ed INT, NUMEROEJEMPLAR int)
RETURNS varchar(128)
    BEGIN
        
        RETURN (SELECT estado
            FROM EJEMPLAR e 
            WHERE e.edicion_id = ed AND e.NUMERO_EJEMPLAR= NumeroEjemplar 
            FETCH FIRST ROW ONLY);
    END 
;
CREATE OR REPLACE FUNCTION getEstado(ed INT, NUMEROEJEMPLAR int)
RETURNS varchar(128)
    BEGIN
        
        RETURN (SELECT estado_del_ejemplar
            FROM EJEMPLAR e 
            WHERE e.edicion_id = ed AND e.NUMERO_EJEMPLAR= NumeroEjemplar 
            FETCH FIRST ROW ONLY);
    END 
;

CREATE OR REPLACE FUNCTION es_docente(id INT)
RETURNS BOOLEAN
    BEGIN
        RETURN (SELECT COUNT(*)
            FROM Docente
            WHERE lector_id = id
            FETCH FIRST ROW ONLY) > 0;
    END
;

CREATE OR REPLACE FUNCTION cant_ejemplares_disp(ed INT)
RETURNS INT
    BEGIN
        DECLARE cant INT;
        
        SELECT count(*)
            INTO cant
            FROM enEstanteria
            WHERE edicion_id = ed;
        RETURN cant;
    END 
;

--TRANSACCION
CREATE OR REPLACE FUNCTION tieneLibroEnPrestamo(lectorID int, edicionID int)
RETURNS BOOLEAN
    BEGIN
        RETURN (
            SELECT COUNT(*)
            FROM Prestamo P
            WHERE P.edicion_id = edicionID
                AND P.LECTOR_ID=LECTORID
                AND FECHA_DEVOLUCION IS NULL
            FETCH FIRST ROW ONLY
            ) > 0;
    END
;

CREATE OR REPLACE PROCEDURE GenerarPrestamo(IN lectorID int, IN edicionID int )
LANGUAGE SQL
    BEGIN ATOMIC
    	--LOCK TABLE Prestamo IN EXCLUSIVE MODE;
    	DECLARE fechaLimite DATE;
	    DECLARE numeroEjemplar int;
	    DECLARE cant INT;
	    DECLARE estado varchar(128);
        SET cant = cant_ejemplares_disp(edicionID);

        IF (cant < 2) THEN
            SIGNAL SQLSTATE '75001' SET MESSAGE_TEXT='No hay ejemplares suficientes para un prestamo.';
        END IF;
     
        IF (tieneLibroEnPrestamo(lectorID,EdicionID)) THEN
            SIGNAL SQLSTATE '75002' SET MESSAGE_TEXT='Ya tiene la misma edicion prestada.';
        END IF;
       
       SET numeroEjemplar = nroEjemplarDisponible(edicionID);
    
       
       SET fechaLimite = CURRENT date + 7 DAYS;
       IF (es_docente(lectorid)) THEN
        SET fechaLimite = CURRENT date + 14 DAYS;
   END IF;
    
   SET estado = getEstado(edicionID, NUMEROEJEMPLAR);
 
  INSERT INTO PRESTAMO(fecha_entrega, FECHA_DEVOLUCION,Fecha_Limite, ESTADO_DEL_EJEMPLAR,  EDICION_ID, NUMERO_EJEMPLAR, lector_id) 
  VALUES(CURRENT date, NULL, fechalimite, estado, EDICIONID, numeroEJEMPLAR, lectorID);
END
; 

--TRIGGER
CREATE OR REPLACE TRIGGER actualizarEstado
AFTER UPDATE ON Prestamo
REFERENCING NEW AS N FOR EACH ROW
BEGIN ATOMIC
    UPDATE EJEMPLAR E
    SET E.estado_del_ejemplar = N.estado_del_ejemplar
    WHERE N.edicion_id = E.edicion_id AND N.numero_ejemplar = E.numero_ejemplar;
END
;
