CREATE DATABASE bd_sist_gest_acad;


-- Table Persona
-- -----------------------------------------------------
CREATE TABLE Persona (
  per_Id INT IDENTITY(1,1),
  per_nombres VARCHAR(45) NOT NULL,
  per_apellidos VARCHAR(45) NOT NULL,
  per_identificacion VARCHAR(45) NOT NULL,
  per_telefono VARCHAR(45) NOT NULL,
  per_mail VARCHAR(45) NOT NULL,
  per_direccion VARCHAR(45) NOT NULL,
  PRIMARY KEY (per_Id))



-- -----------------------------------------------------
-- Table Docente
-- -----------------------------------------------------
CREATE TABLE Docente (
  doc_Id INT IDENTITY(1,1),
  doc_profesion VARCHAR(45) NULL,
  doc_salario FLOAT NULL,
  Persona_per_Id INT NOT NULL,
  PRIMARY KEY (doc_Id , Persona_per_Id))



-- -----------------------------------------------------
-- Table Area
-- -----------------------------------------------------
CREATE TABLE Area (
  area_id INT IDENTITY(1,1),
  area_nombre VARCHAR(45) NOT NULL,
  area_descripcion VARCHAR(45) NOT NULL,
  PRIMARY KEY (area_id))



-- -----------------------------------------------------
-- Table Grado
-- -----------------------------------------------------
CREATE TABLE Grado (
  gra_id INT IDENTITY(1,1),
  gra_nombre VARCHAR(45) NOT NULL,
  gra_descripcion VARCHAR(250) NOT NULL,
  PRIMARY KEY (gra_id))



-- -----------------------------------------------------
-- Table Asignatura
-- -----------------------------------------------------
CREATE TABLE Asignatura (
  asi_id INT IDENTITY(1,1),
  asi_nombre VARCHAR(45) NOT NULL,
  asi_descripcion VARCHAR(45) NULL,
  Area_area_id INT NOT NULL,
  Grado_gra_id INT NOT NULL,
  PRIMARY KEY (asi_id, Area_area_id, Grado_gra_id))


-- -----------------------------------------------------
-- Table Competencias
-- -----------------------------------------------------
CREATE TABLE Competencias (
  com_id INT IDENTITY(1,1),
  com_nombre VARCHAR(45) NOT NULL,
  com_descripcion VARCHAR(250) NOT NULL,
  Asignatura_asi_id INT NOT NULL,
  PRIMARY KEY (com_id, Asignatura_asi_id))


-- -----------------------------------------------------
-- Table Periodo
-- -----------------------------------------------------
CREATE TABLE Periodo (
  per_id INT IDENTITY(1,1),
  per_nombre VARCHAR(45) NOT NULL,
  per_descripcion VARCHAR(250) NOT NULL,
  per_fec_inicio DATE NOT NULL,
  per_fec_fin DATE NOT NULL,
  per_codigo VARCHAR(25) NULL,
  PRIMARY KEY (per_id))



-- -----------------------------------------------------
-- Table Actividad
-- -----------------------------------------------------
CREATE TABLE Actividad (
  act_id INT IDENTITY(1,1),
  act_nombre VARCHAR(45) NOT NULL,
  act_descripcion VARCHAR(45) NOT NULL,
  act_asistencia TINYINT NULL,
  act_fec_inicio DATE NOT NULL,
  act_fec_fin DATE NOT NULL,
  Competencias_com_id INT NOT NULL,
  Periodo_per_id INT NOT NULL,
  PRIMARY KEY (act_id, Competencias_com_id, Periodo_per_id))


-- -----------------------------------------------------
-- Table Estudiante
-- -----------------------------------------------------
CREATE TABLE Estudiante (
  est_Id INT IDENTITY(1,1),
  est_fec_nac DATE NULL,
  est_padre_per_Id INT NULL,
  est_madre_per_Id INT NULL,
  est_acudiente_per_Id INT NULL,
  est_parentezco_acudiente VARCHAR(45) NULL,
  PRIMARY KEY (est_Id, est_padre_per_Id, est_madre_per_Id, est_acudiente_per_Id))



-- -----------------------------------------------------
-- Table Grupo
-- -----------------------------------------------------
CREATE TABLE Grupo (
  gru_id INT IDENTITY(1,1),
  gru_nombre VARCHAR(45) NULL,
  gru_descripcion VARCHAR(250) NULL,
  director_grupo_per_Id INT NOT NULL,
  PRIMARY KEY (gru_id, director_grupo_per_Id))



-- -----------------------------------------------------
-- Table Matricula
-- -----------------------------------------------------
CREATE TABLE Matricula (
  mat_id INT IDENTITY(1,1),
  mat_fecha_creacion DATE NOT NULL,
  mat_creador VARCHAR(250) NOT NULL,
  Estudiante_est_Id INT NOT NULL,
  Grupo_gru_id INT NOT NULL,
  PRIMARY KEY (mat_id, Estudiante_est_Id, Grupo_gru_id))



-- -----------------------------------------------------
-- Table Asignatura_grupo
-- -----------------------------------------------------
CREATE TABLE Asignatura_grupo (
  gru_as_id INT IDENTITY(1,1),
  Asignatura_asi_id INT NOT NULL,
  Docente_doc_Id INT NOT NULL,
  Grupo_gru_id INT NOT NULL,
  PRIMARY KEY (gru_as_id, Asignatura_asi_id, Docente_doc_Id, Grupo_gru_id))




-- -----------------------------------------------------
-- Table Nota_periodo
-- -----------------------------------------------------
CREATE TABLE Nota_periodo (
  not_per_id INT IDENTITY(1,1),
  not_per_nota FLOAT NOT NULL,
  not_per_observacion TEXT NOT NULL,
  Periodo_per_id INT NOT NULL,
  Estudiante_est_Id INT NOT NULL,
  PRIMARY KEY (not_per_id, Periodo_per_id, Estudiante_est_Id))




-- -----------------------------------------------------
-- Table Nota_actividad
-- -----------------------------------------------------
CREATE TABLE Nota_actividad (
  not_act_id INT IDENTITY(1,1),
  not_act_nota FLOAT NOT NULL,
  not_act_observacion TEXT NULL,
  Actividad_act_id INT NOT NULL,
  Estudiante_est_Id INT NOT NULL,
  PRIMARY KEY (not_act_id, Actividad_act_id, Estudiante_est_Id))




-- -----------------------------------------------------
-- Table Nota_competencia
-- -----------------------------------------------------
CREATE TABLE Nota_competencia (
  not_com_id INT IDENTITY(1,1),
  not_com_nota FLOAT NOT NULL,
  not_com_observacion TEXT NOT NULL,
  Competencias_com_id INT NOT NULL,
  Estudiante_est_Id INT NOT NULL,
  PRIMARY KEY (not_com_id, Competencias_com_id, Estudiante_est_Id))


-- -----------------------------------------------------
-- Table Nota_asignatura
-- -----------------------------------------------------
CREATE TABLE Nota_asignatura (
  not_asi_id INT IDENTITY(1,1),
  not_asi_nota FLOAT NOT NULL,
  not_asi_observacion TEXT NOT NULL,
  Asignatura_asi_id INT NOT NULL,
  Estudiante_est_Id INT NOT NULL,
  PRIMARY KEY (not_asi_id, Asignatura_asi_id, Estudiante_est_Id))