CREATE TABLE Persona (
	Id INT PRIMARY KEY,
	Ident_Persona  VARCHAR (20) NOT NULL,
	Nom_Persona    VARCHAR (20) NOT NULL,
	Apel_Persona   VARCHAR (20) NOT NULL,
	Corr_Persona   VARCHAR (30) NOT NULL,
	Tel_Persona    VARCHAR (30) NOT NULL,
	Dir_Persona    VARCHAR (30) NOT NULL,
	Fec_Persona DATETIME );



CREATE TABLE Estudiante (
	Id INT PRIMARY KEY,
	Nombre_Padre_Estudiante VARCHAR (30) NOT NULL,
    Ident_Padre_Estudiante VARCHAR (20) NOT NULL,
    Tel_Padre_Estudiante VARCHAR (15) NOT NULL,
    Dir_Padre_Estudiante VARCHAR (50) NOT NULL,
    Apell_Padre_Estudiante VARCHAR (30) NOT NULL,
	Nombre_Madre_Estudiante VARCHAR (30) NOT NULL,
    Apell_Madre_Estudiante VARCHAR (30) NOT NULL,
    Ident_Madre_Estudiante VARCHAR (15) NOT NULL,
    Tel_Madre_Estudiante VARCHAR (15) NOT NULL,
    Dir_Madre_Estudiante VARCHAR (30) NOT NULL,
	IdPersona_Estudiante INT NOT NULL,
	CONSTRAINT fk_Persona_Est FOREIGN KEY (IdPersona_Estudiante) REFERENCES Persona(Id));




CREATE TABLE Docente (
	Id INT PRIMARY KEY,
	Doc_Profesion VARCHAR(45) NULL,
	Doc_Salario INT,
	Idpersona_Doc INT NOT NULL,
	CONSTRAINT fk_Persona_Doc FOREIGN KEY (Idpersona_Doc) REFERENCES Persona(Id));




CREATE TABLE Acudiente (
   Id INT PRIMARY KEY,
   Acu_Parentezco VARCHAR(50) NULL,
   IdPersona_Estudiante INT NOT NULL,
   IdPesona_Acudiente INT NOT NULL,
   CONSTRAINT fk_Acudiente_Estudiante FOREIGN KEY (IdPersona_Estudiante)REFERENCES Estudiante (Id), 
   CONSTRAINT fk_Acudiente_Persona    FOREIGN KEY (IdPesona_Acudiente)  REFERENCES Persona (Id));




CREATE TABLE  Periodo (
  Id INT PRIMARY KEY,
  Per_Nombre VARCHAR(45) NOT NULL,
  Per_Descripcion VARCHAR(250) NOT NULL,
  Per_Fec_Inicio DATE NOT NULL,
  Per_Fec_Fin DATETIME NOT NULL,
  Per_Codigo  VARCHAR(25) NULL);




CREATE TABLE Grupo (
  Id INT PRIMARY KEY,
  Grup_Nombre VARCHAR(45) NULL,
  Grup_Descripcion VARCHAR(250) NULL,
  Director_IdGrupo INT NOT NULL,
  CONSTRAINT fk_Director_IdGrupo FOREIGN KEY (Director_IdGrupo) REFERENCES Persona (Id));



CREATE TABLE Matricula (
  Id INT PRIMARY KEY,
  Mat_Fecha_creacion DATE NOT NULL,
  Mat_Creador VARCHAR(250) NOT NULL,
  IdMatricula_Estudiante INT NOT NULL,
  Matricula_IdGrupo INT NOT NULL,
  CONSTRAINT fk_Matricula_IdGrupo FOREIGN KEY (Matricula_IdGrupo) REFERENCES Grupo (Id),
  CONSTRAINT fk_Matricula_Estudiante1 FOREIGN KEY (IdMatricula_Estudiante) REFERENCES Estudiante (Id));



CREATE TABLE Area (
   Id INT PRIMARY KEY,
   Area_Nombre VARCHAR(45) NOT NULL,
   Area_Descripcion VARCHAR(45) NOT NULL);




CREATE TABLE Grado (
   Id INT PRIMARY KEY,
   Grad_Nombre VARCHAR(45) NOT NULL,
   Grad_Descripcion VARCHAR(250) NOT NULL);




CREATE TABLE Asignatura (
  Id INT PRIMARY KEY,
  Asig_Nombre VARCHAR(45) NOT NULL,
  Asig_Descripcion VARCHAR(45) NULL,
  Area_IdArea INT NOT NULL,
  Grado_IdGrado INT NOT NULL,
  CONSTRAINT fk_Area_Area1    FOREIGN KEY (Area_IdArea)       REFERENCES Area (Id),
  CONSTRAINT fk_Grado_Grado1  FOREIGN KEY (Grado_IdGrado)     REFERENCES Grado (Id));



CREATE TABLE Competencias (
  Id INT PRIMARY KEY,
  Com_nombre VARCHAR(45) NOT NULL,
  Com_descripcion VARCHAR(250) NOT NULL,
  Asignatura_IdAsignaturas INT NOT NULL,
  CONSTRAINT fk_Competencias_Asignatura1 FOREIGN KEY (Asignatura_IdAsignaturas) REFERENCES Asignatura (Id));




CREATE TABLE Asignatura_Grupo (
  Id INT PRIMARY KEY,
  Asignatura_IdAsignatura INT NOT NULL,
  Docente_IdDocente INT NOT NULL,
  Grupo_IdGrupo INT NOT NULL,
  CONSTRAINT fk_Grupo_Asignatura_Asignatura1 FOREIGN KEY (Asignatura_IdAsignatura) REFERENCES Asignatura (Id),
  CONSTRAINT fk_Grupo_Asignatura_Docente1    FOREIGN KEY (Docente_IdDocente)       REFERENCES Docente (Id),
  CONSTRAINT fk_Grupo_Asignatura_Grupo1      FOREIGN KEY (Grupo_IdGrupo)           REFERENCES Grupo (Id));




CREATE TABLE  Actividad (
  Id INT PRIMARY KEY,
  Act_Nombre VARCHAR(45) NOT NULL,
  Act_Descripcion VARCHAR(45) NOT NULL,
  Act_Asistencia TINYINT NULL,
  Act_Fec_Inicio DATE NOT NULL,
  Act_Fec_Fin DATE NOT NULL,
  Competencias_IdCompetencias INT NOT NULL,
  Periodo_IdPeriodo INT NOT NULL,
  CONSTRAINT fk_Actividad_Competencias1 FOREIGN KEY (Competencias_IdCompetencias) REFERENCES  Competencias(Id),
  CONSTRAINT fk_Actividad_Periodo1      FOREIGN KEY (Periodo_IdPeriodo)          REFERENCES  Periodo(Id));




CREATE TABLE Nota_competencia (
  Id INT PRIMARY KEY,
  Nota_Com_Nota FLOAT NOT NULL,
  Nota_Com_Observacion TEXT NOT NULL,
  Competencias_IdCompetencia INT NOT NULL,
  Estudiante_IdEstado INT NOT NULL,
  CONSTRAINT fk_Nota_Competencias_IdCompetencia  FOREIGN KEY (Competencias_IdCompetencia) REFERENCES Competencias (Id),
  CONSTRAINT fk_Nota_Estudiante_IdEstado         FOREIGN KEY (Estudiante_IdEstado)        REFERENCES Estudiante   (Id));


CREATE TABLE Nota_Periodo (
  Id INT PRIMARY KEY,
  Nota_Per_Nota FLOAT NOT NULL,
  Nota_Per_Observacion TEXT NOT NULL,
  Periodo_IdPeriodo INT NOT NULL,
  Estudiante_IdEstudiante INT NOT NULL, 
  CONSTRAINT  fk_Nota_periodo_Estudiante1  FOREIGN KEY ( Estudiante_IdEstudiante) REFERENCES  Estudiante (Id),
  CONSTRAINT  fk_Nota_periodo_Periodo1     FOREIGN KEY ( Periodo_IdPeriodo)       REFERENCES  Periodo (Id));




CREATE TABLE Nota_Actividad (
  Id INT PRIMARY KEY,
  Nota_Act_Nota FLOAT NOT NULL,
  Nota_Act_Observacion TEXT NULL,
  Actividad_IdActividad INT NOT NULL,
  Estudiante_IdEstudiante INT NOT NULL,
  CONSTRAINT fk_Nota_actividad_Actividad1   FOREIGN KEY (Actividad_IdActividad)   REFERENCES Actividad (Id),
  CONSTRAINT fk_Nota_actividad_Estudiante1  FOREIGN KEY (Estudiante_IdEstudiante) REFERENCES Estudiante (Id));




CREATE TABLE Nota_Asignatura (
  Id INT PRIMARY KEY,
  Not_asi_nota FLOAT NOT NULL,
  Not_asi_observacion TEXT NOT NULL,
  Asignatura_IdAsignatura INT NOT NULL,
  Estudiante_IdEstudiante1 INT NOT NULL,
  CONSTRAINT fk_Nota_asignatura_Asignatura1 FOREIGN KEY (Asignatura_IdAsignatura) REFERENCES Asignatura (Id),
  CONSTRAINT fk_Nota_asignatura_Estudiante1 FOREIGN KEY (Estudiante_IdEstudiante1) REFERENCES Estudiante (Id));


 
