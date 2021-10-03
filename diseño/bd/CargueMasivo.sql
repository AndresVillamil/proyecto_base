USE db_Proyecto;

INSERT INTO dbo.Persona VALUES (	'MARLENY',	'VEGA ROJAS',	'9647647032',	'3145771611',	'MARLENY@mail.com',	'KR 1 72 27');
INSERT INTO dbo.Persona VALUES (	'AURA ZULY',	'HUERTAS',	'5049922539',	'3107620551',	'AURA ZULY@mail.com',	'KR 54 64A 75 TO 2 AP 301');
INSERT INTO dbo.Persona VALUES (	'ZULLY ELENA',	'CAMACHO CASTRO',	'5228094737',	'3223082457',	'ZULLY ELENA@mail.com',	'CL 86 87A 95');
INSERT INTO dbo.Persona VALUES (	'MARIA ZULAINA',	'HERRAN DUARTE',	'6019983106',	'3208549240',	'MARIA ZULAINA@mail.com',	'CL 138 58D 01 ED 07 AP 104');
INSERT INTO dbo.Persona VALUES (	'ZORAIDA STELLA',	'PARRA DE GONZALEZ',	'7168273841',	'3212333991',	'ZORAIDA STELLA@mail.com',	'KR 111A 146 87');
INSERT INTO dbo.Persona VALUES (	'JASMIN',	'MARTINEZ CONTRERAS',	'5812135120',	'3165369304',	'JASMIN@mail.com',	'CL 78 62 29');
INSERT INTO dbo.Persona VALUES (	'ZULMA ROCIO',	'CORREDOR PIRAGAUTA',	'7651628210',	'3123931948',	'ZULMA ROCIO@mail.com',	'KR 72F 39 35 SUR');
INSERT INTO dbo.Persona VALUES (	'GLADIZ',	'ALVAREZ BAUTISTA',	'9975190644',	'3212007174',	'GLADIZ@mail.com',	'CL 33 BIS 4A 33');
INSERT INTO dbo.Persona VALUES (	'FREYA',	'MOLANO P',	'4497046493',	'3214792803',	'FREYA@mail.com',	'CL 82 95D AP 311 BRR BACHUE II');
INSERT INTO dbo.Persona VALUES (	'ZEYRUS CESAR',	'ALFONSO ROSAS',	'9925728484',	'3182180111',	'ZEYRUS CESAR@mail.com',	'CL 23D 80B 07');
INSERT INTO dbo.Persona VALUES (	'EDGAR HERNAN',	'PEREZ SUAREZ',	'1546791582',	'3208010142',	'EDGAR HERNAN@mail.com',	'CL 66 81 26');
INSERT INTO dbo.Persona VALUES (	'ZENAIDA',	'RUIZ BALAGUERA',	'846734530',	'3164207057',	'ZENAIDA@mail.com',	'CL 98 19A 45');
INSERT INTO dbo.Persona VALUES (	'ZENAIDA',	'PINEROS PORRAS',	'3114409991',	'3214061266',	'ZENAIDA@mail.com',	'KR 91A 54 78');
INSERT INTO dbo.Persona VALUES (	'JAVIER',	'ZARATE LARA',	'6578871136',	'3102870083',	'JAVIER@mail.com',	'KR 7 126 30 AP 705 TO 2');
INSERT INTO dbo.Persona VALUES (	'FERNANDO',	'ZARATE HERRERA',	'8097393174',	'6156075',	'FERNANDO@mail.com',	'KR 14A 127A 91 AP 301');
INSERT INTO dbo.Persona VALUES (	'JOSE MANUEL',	'ZAPATA MONTOYA',	'8727573079',	'3203496318',	'JOSE MANUEL@mail.com',	'KR 30 52 38');
INSERT INTO dbo.Persona VALUES (	'SANDRA',	'GUERRERO GIL',	'9962739996',	'3144779666',	'SANDRA@mail.com',	'CL 1C BIS 31B 10');
INSERT INTO dbo.Persona VALUES (	'ZAMIRA',	'RODRIGUEZ GUTIERREZ',	'8466781032',	'3168292377',	'ZAMIRA@mail.com',	'KR 86 86 50  AP 310 CON LTS NOGALES');
INSERT INTO dbo.Persona VALUES (	'MANUEL',	'CHAVEZ GOMEZ',	'4001555131',	'3143969150',	'MANUEL@mail.com',	'CL 58 16 32');
INSERT INTO dbo.Persona VALUES (	'NICTHZY PAOLA',	'CORTES JIMENEZ',	'4710646298',	'3115471083',	'NICTHZY PAOLA@mail.com',	'KR 1D 76B 27 SUR');


SELECT * FROM Persona;

INSERT INTO dbo.Docente VALUES (	'Licenciado en Lenguas',	'3500000',	'1');
INSERT INTO dbo.Docente VALUES (	'Licenciado en matemáticas',	'3400000',	'2');
INSERT INTO dbo.Docente VALUES (	'Licenciado en Ciencias Sociales',	'2500000',	'3');
INSERT INTO dbo.Docente VALUES (	'Licenciado en Biología',	'3100000',	'4');
INSERT INTO dbo.Docente VALUES (	'Licenciado en Ed. Física',	'1250000',	'5');

SELECT * FROM Docente;

INSERT INTO dbo.Estudiante VALUES (	'2005-05-22',	'3',	'6',	'11');
INSERT INTO dbo.Estudiante VALUES (	'2006-04-23',	'20',	'7',	'12');
INSERT INTO dbo.Estudiante VALUES (	'2008-12-12',	'15',	'8',	'14');
INSERT INTO dbo.Estudiante VALUES (	'2005-07-18',	'17',	'9',	'13');
INSERT INTO dbo.Estudiante VALUES (	'2005-01-01',	'18',	'10',	'19');

SELECT * FROM Estudiante;

INSERT INTO dbo.Acudiente VALUES (	'3',	'1',	'Padre');
INSERT INTO dbo.Acudiente VALUES (	'12',	'2',	'Madre');
INSERT INTO dbo.Acudiente VALUES (	'15',	'3',	'Padre');
INSERT INTO dbo.Acudiente VALUES (	'13',	'4',	'Madre');
INSERT INTO dbo.Acudiente VALUES (	'19',	'5',	'Madre');

SELECT * FROM Acudiente;

INSERT INTO dbo.Grado VALUES (	'901',	'Primer Grupo 9');
INSERT INTO dbo.Grado VALUES (	'902',	'Segundo Grupo 9');
INSERT INTO dbo.Grado VALUES (	'801',	'Primer Grupo 8');
INSERT INTO dbo.Grado VALUES (	'802',	'Segundo Grupo 8');
INSERT INTO dbo.Grado VALUES (	'701',	'Primer Grupo 7');

SELECT * FROM Grado;

INSERT INTO dbo.Grupo VALUES (	'901',	'Primer Grupo 9',	'1');
INSERT INTO dbo.Grupo VALUES (	'902',	'Segundo Grupo 9',	'2');
INSERT INTO dbo.Grupo VALUES (	'801',	'Primer Grupo 8',	'3');
INSERT INTO dbo.Grupo VALUES (	'802',	'Segundo Grupo 8',	'4');
INSERT INTO dbo.Grupo VALUES (	'701',	'Primer Grupo 7',	'5');

SELECT * FROM Grupo;

INSERT INTO dbo.Matricula VALUES (	'2000-01-01',	'ADMINISTRADOR',	'1',	'1');
INSERT INTO dbo.Matricula VALUES (	'2000-01-01',	'ADMINISTRADOR',	'2',	'1');
INSERT INTO dbo.Matricula VALUES (	'2000-01-01',	'ADMINISTRADOR',	'3',	'3');
INSERT INTO dbo.Matricula VALUES (	'2000-01-01',	'ADMINISTRADOR',	'4',	'3');
INSERT INTO dbo.Matricula VALUES (	'2000-01-01',	'ADMINISTRADOR',	'5',	'5');

SELECT * FROM Matricula;

INSERT INTO dbo.Area VALUES (	'Humanidades',	'Humanidades');
INSERT INTO dbo.Area VALUES (	'Ciencias',	'Ciencias');
INSERT INTO dbo.Area VALUES (	'Deportes',	'Deportes');
INSERT INTO dbo.Area VALUES (	'Lenguas',	'Lenguas');
INSERT INTO dbo.Area VALUES (	'Análisis',	'Análisis');

SELECT * FROM Area;

INSERT INTO dbo.Asignatura VALUES (	'Cálculo',	'NULL',	'5',	'1');
INSERT INTO dbo.Asignatura VALUES (	'Ciencias Naturales',	'NULL',	'2',	'1');
INSERT INTO dbo.Asignatura VALUES (	'Ciencias Sociales',	'NULL',	'2',	'1');
INSERT INTO dbo.Asignatura VALUES (	'Ciencias Políticas',	'NULL',	'2',	'1');
INSERT INTO dbo.Asignatura VALUES (	'Español',	'NULL',	'1',	'1');
INSERT INTO dbo.Asignatura VALUES (	'Inglés',	'NULL',	'1',	'1');
INSERT INTO dbo.Asignatura VALUES (	'Francés',	'NULL',	'1',	'1');
INSERT INTO dbo.Asignatura VALUES (	'Ed. Física',	'NULL',	'3',	'1');
INSERT INTO dbo.Asignatura VALUES (	'Informática',	'NULL',	'5',	'1');
INSERT INTO dbo.Asignatura VALUES (	'Cálculo',	'NULL',	'5',	'3');
INSERT INTO dbo.Asignatura VALUES (	'Ciencias Naturales',	'NULL',	'2',	'3');
INSERT INTO dbo.Asignatura VALUES (	'Ciencias Sociales',	'NULL',	'2',	'3');
INSERT INTO dbo.Asignatura VALUES (	'Ciencias Políticas',	'NULL',	'2',	'3');
INSERT INTO dbo.Asignatura VALUES (	'Español',	'NULL',	'1',	'3');
INSERT INTO dbo.Asignatura VALUES (	'Inglés',	'NULL',	'1',	'3');
INSERT INTO dbo.Asignatura VALUES (	'Francés',	'NULL',	'1',	'3');
INSERT INTO dbo.Asignatura VALUES (	'Ed. Física',	'NULL',	'3',	'3');
INSERT INTO dbo.Asignatura VALUES (	'Informática',	'NULL',	'5',	'3');
INSERT INTO dbo.Asignatura VALUES (	'Cálculo',	'NULL',	'5',	'5');
INSERT INTO dbo.Asignatura VALUES (	'Ciencias Naturales',	'NULL',	'2',	'5');
INSERT INTO dbo.Asignatura VALUES (	'Ciencias Sociales',	'NULL',	'2',	'5');
INSERT INTO dbo.Asignatura VALUES (	'Ciencias Políticas',	'NULL',	'2',	'5');
INSERT INTO dbo.Asignatura VALUES (	'Español',	'NULL',	'1',	'5');
INSERT INTO dbo.Asignatura VALUES (	'Inglés',	'NULL',	'1',	'5');
INSERT INTO dbo.Asignatura VALUES (	'Francés',	'NULL',	'1',	'5');
INSERT INTO dbo.Asignatura VALUES (	'Ed. Física',	'NULL',	'3',	'5');
INSERT INTO dbo.Asignatura VALUES (	'Informática',	'NULL',	'5',	'5');

SELECT * FROM Asignatura;
SELECT * FROM Docente;

INSERT INTO dbo.Asignatura_grupo VALUES (	'1',	'2',	'1');
INSERT INTO dbo.Asignatura_grupo VALUES (	'10',	'2',	'3');
INSERT INTO dbo.Asignatura_grupo VALUES (	'19',	'2',	'5');
INSERT INTO dbo.Asignatura_grupo VALUES (	'2',	'4',	'1');
INSERT INTO dbo.Asignatura_grupo VALUES (	'11',	'4',	'3');
INSERT INTO dbo.Asignatura_grupo VALUES (	'20',	'4',	'5');
INSERT INTO dbo.Asignatura_grupo VALUES (	'3',	'3',	'1');
INSERT INTO dbo.Asignatura_grupo VALUES (	'12',	'3',	'3');
INSERT INTO dbo.Asignatura_grupo VALUES (	'21',	'3',	'5');
INSERT INTO dbo.Asignatura_grupo VALUES (	'4',	'3',	'1');
INSERT INTO dbo.Asignatura_grupo VALUES (	'13',	'3',	'3');
INSERT INTO dbo.Asignatura_grupo VALUES (	'22',	'3',	'5');
INSERT INTO dbo.Asignatura_grupo VALUES (	'5',	'1',	'1');
INSERT INTO dbo.Asignatura_grupo VALUES (	'14',	'1',	'3');
INSERT INTO dbo.Asignatura_grupo VALUES (	'23',	'1',	'5');
INSERT INTO dbo.Asignatura_grupo VALUES (	'6',	'1',	'1');
INSERT INTO dbo.Asignatura_grupo VALUES (	'15',	'1',	'3');
INSERT INTO dbo.Asignatura_grupo VALUES (	'24',	'1',	'5');
INSERT INTO dbo.Asignatura_grupo VALUES (	'7',	'1',	'1');
INSERT INTO dbo.Asignatura_grupo VALUES (	'16',	'1',	'3');
INSERT INTO dbo.Asignatura_grupo VALUES (	'25',	'1',	'5');
INSERT INTO dbo.Asignatura_grupo VALUES (	'8',	'5',	'1');
INSERT INTO dbo.Asignatura_grupo VALUES (	'17',	'5',	'3');
INSERT INTO dbo.Asignatura_grupo VALUES (	'26',	'5',	'5');
INSERT INTO dbo.Asignatura_grupo VALUES (	'9',	'5',	'1');
INSERT INTO dbo.Asignatura_grupo VALUES (	'18',	'5',	'3');
INSERT INTO dbo.Asignatura_grupo VALUES (	'27',	'5',	'5');

SELECT * FROM Asignatura_grupo;
