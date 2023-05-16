CREATE TABLE `Actividad Limpieza`  (
  `IdAct` int NOT NULL,
  `DetAct` varchar(500) NULL,
  `FkIdCol1` int NULL,
  PRIMARY KEY (`IdAct`)
);

CREATE TABLE `Colonia`  (
  `IdCol` int NOT NULL,
  `CP` int NULL,
  `Ase` varchar(300) NULL,
  `Mun` varchar(300) NULL,
  `Est` varchar(300) NULL,
  `Ciudad` varchar(300) NULL,
  PRIMARY KEY (`IdCol`)
);

CREATE TABLE `Cuadrilla`  (
  `IdCua` int NOT NULL,
  `FkIdJefe1` int NULL,
  `FkIdAct1` int NULL,
  PRIMARY KEY (`IdCua`)
);

CREATE TABLE `Jefe`  (
  `IdJefe` int NOT NULL,
  `NomJefe` varchar(300) NULL,
  `ApeJefe` varchar(300) NULL,
  PRIMARY KEY (`IdJefe`)
);

CREATE TABLE `Personal`  (
  `IdPer` int NOT NULL,
  `NomPer` varchar(300) NULL,
  `ApePer` varchar(300) NULL,
  `FkIdCuad1` int NULL,
  PRIMARY KEY (`IdPer`)
);

ALTER TABLE `Actividad Limpieza` ADD CONSTRAINT `fk_Actividad Limpieza_Colonia_1` FOREIGN KEY (`FkIdCol1`) REFERENCES `Colonia` (`IdCol`);
ALTER TABLE `Cuadrilla` ADD CONSTRAINT `fk_Cuadrilla_Jefe_1` FOREIGN KEY (`FkIdJefe1`) REFERENCES `Jefe` (`IdJefe`);
ALTER TABLE `Cuadrilla` ADD CONSTRAINT `fk_Cuadrilla_Actividad Limpieza_1` FOREIGN KEY (`FkIdAct1`) REFERENCES `Actividad Limpieza` (`IdAct`);
ALTER TABLE `Personal` ADD CONSTRAINT `fk_Personal_Cuadrilla_1` FOREIGN KEY (`FkIdCuad1`) REFERENCES `Cuadrilla` (`IdCua`);

CREATE VIEW `view_1` AS;

