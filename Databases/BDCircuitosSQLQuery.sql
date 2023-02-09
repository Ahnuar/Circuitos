IF EXISTS (SELECT * from sys.databases WHERE name='bdCircuitos')
BEGIN
    DROP DATABASE bdCircuitos
END
CREATE DATABASE bdCircuitos COLLATE Modern_Spanish_CI_AS;        /* CI (Case Insensitive) AI (Accent Insensitive) */
GO
USE bdCircuitos 

CREATE TABLE dbo.Continentes
(
	id int NOT NULL 
    ,Nombre varchar(128) NOT NULL
	PRIMARY KEY (id)
);

CREATE TABLE dbo.Paises
(
	id int NOT NULL 
    ,Nombre varchar(128) NOT NULL 
	,idContinente int
	PRIMARY KEY (id),
    FOREIGN KEY (idContinente) REFERENCES dbo.Continentes(id)
);

CREATE TABLE dbo.Localidades
(
	id int NOT NULL 
    ,Nombre varchar(128) NOT NULL 
	,idPais int
	PRIMARY KEY (id),
    FOREIGN KEY (idPais) REFERENCES dbo.Paises(id)
);

CREATE TABLE dbo.Circuitos 
( 
    id int NOT NULL 
    ,Nombre varchar(128) NOT NULL 
    ,Coordenadas varchar(128) 
    ,UrlWiki varchar(128)
    ,UrlCircuito varchar(128) 
    ,Inauguracion datetime 
	,IdLocalidad int
	PRIMARY KEY (id),
	FOREIGN KEY (idLocalidad) REFERENCES dbo.Localidades(id)
);


CREATE TABLE dbo.Fotos
(
	id int NOT NULL
	,codigo varchar(MAX)
	,idCircuitos int
	PRIMARY KEY (id),
	FOREIGN KEY (idCircuitos) REFERENCES dbo.Circuitos(id)
);