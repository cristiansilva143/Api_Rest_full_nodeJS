DROP DATABASE IF EXISTS prueba;
CREATE DATABASE prueba;

\c prueba;

/*CREATE TABLE player (
  ID SERIAL PRIMARY KEY,
  name VARCHAR,
  surname VARCHAR,
  dob DATE
);*/

CREATE TABLE F_PAIS
PAIS_ID SERIAL PRIMARY KEY  NUMBER NOT NULL, 
DESCRIPCION  VARCHAR2(50 BYTE) NOT NULL
CREATE UNIQUE INDEX XPKF_PAIS ON F_PAIS
(INTERFACE_NAME);

INSERT INTO F_PAIS (PAIS_ID, DESCRIPCION) VALUES ( 1,"ENGLAND"  ),
INSERT INTO F_PAIS (PAIS_ID, DESCRIPCION) VALUES ( 2,"SPAIN"  ),
INSERT INTO F_PAIS (PAIS_ID, DESCRIPCION) VALUES ( 3,"GERMANY"  );

CREATE TABLE F_EQUIPO
PAIS_ID SERIAL PRIMARY KEY NUMBER NOT NULL, 
EQUIPO VARCHAR2(50 BYTE)NOT NULL,
ALTER TABLE F_EQUIPO ADD (CONSTRAINT XFKF_EQUIPO FOREIGN KEY (PAIS_ID) 
REFERENCES F_PAIS (PAIS_ID));

Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Liverpool"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Arsenal"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"M. United"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Tottenham H."),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Chelsea"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Watford"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Everton"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Leicester" ),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Bournemouth" ),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"West Ham Utd." ),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Burnley"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Wolves"  ),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"C Palace"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Southampton"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Brighton"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Newcastle"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Fulham"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Cardiff"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 1,"Huddersfield"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"Bayer 04 Leverkusen"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"VfL Wolfsburg"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"Eintracht Frankfurt"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"TSG 1899 Hoffenheim"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"Borussia Dortmund"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"SV Werder Bremen"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"RB Leipzig"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"FC Augsburg"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"Hannover 96"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"Sport-Club Freiburg"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"FC Bayern MÃ¼nchen"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"FC Schalke 04"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"Hertha BSC"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"VfB Stuttgart"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"Borussia MÃ¶nchengladbach"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 2,"Fortuna DÃ¼sseldorf 1895 e.V."),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Barcelona"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"R. Madrid"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Sevilla" ),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"AtlÃ©tico"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Celta"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Levante"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Eibar"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Villarreal"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Getafe"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"R. Sociedad"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Betis"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Espanyol"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Huesca"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Rayo"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Athletic"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Girona"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Valencia"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"AlavÃ©s"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"LeganÃ©s"),
Insert into F_EQUIPO (PAIS_ID, EQUIPO) Values ( 3,"Valladolid");


