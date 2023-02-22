-- 1)

SELECT count(*) FROM prestamo;
CALL Prestamos_Vencidos('2021-11-24');

-- 2)
CALL EstadoDeEdicionesLibro(17);
CALL EstadoDeEdicionesAutor(11);
CALL EstadoDeEdicionesTema(1);
--SELECT * FROM tema WHERE tema_id = 1;
CALL EstadoDeEdicionesRecomendadosPor(30);

SELECT * FROM PRESTAMO;
SELECT * FROM 
CALL GenerarPrestamo(,)

-- 3)
SELECT * FROM Prestamo;
CALL Prestamos_Año('2021-11-24');
CALL Prestamos_Año('2021-10-24');

-- 4)

CALL lista_lectores_de_autor(1);
SELECT * FROM Prestamo;
--CALL GenerarPrestamo(1);
SELECT * FROM Prestamo;

-- Devolver préstamo
UPDATE PRESTAMO P
SET P.FECHA_DEVOLUCION = CURRENT DATE, P.ESTADO_DEL_EJEMPLAR = 'Prueba'
WHERE P.PRESTAMO_ID = 2;
--
SELECT * FROM Prestamo;
SELECT * FROM EJEMPLAR WHERE ESTADO_DEL_EJEMPLAR = 'Prueba';

