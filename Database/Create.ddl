CREATE TABLE Beneficiar_suvenir (
  Beneficiariid_beneficiar int(10) NOT NULL, 
  Suveniruriid_suvenir     int(10) NOT NULL);
CREATE TABLE Beneficiari (
  id_beneficiar int(10) NOT NULL AUTO_INCREMENT, 
  nume          varchar(255) NOT NULL, 
  PRIMARY KEY (id_beneficiar), 
  UNIQUE INDEX (id_beneficiar));
CREATE TABLE Suveniruri (
  id_suvenir       int(10) NOT NULL AUTO_INCREMENT, 
  nume             varchar(255) NOT NULL, 
  img              blob NOT NULL, 
  inceput_perioada date NOT NULL, 
  sfarsit_perioada date NOT NULL, 
  pret             int(10) NOT NULL, 
  cultura          varchar(255), 
  popularitate     int(10) NOT NULL, 
  PRIMARY KEY (id_suvenir), 
  UNIQUE INDEX (id_suvenir));
CREATE TABLE Tara_suvenir (
  Tariid_tara          int(10) NOT NULL, 
  Suveniruriid_suvenir int(10) NOT NULL);
CREATE TABLE Tari (
  id_tara int(10) NOT NULL AUTO_INCREMENT, 
  nume    varchar(255) NOT NULL, 
  PRIMARY KEY (id_tara), 
  UNIQUE INDEX (id_tara));
CREATE TABLE Turist_Suvenir (
  Turistiid_turist     int(10) NOT NULL, 
  Suveniruriid_suvenir int(10) NOT NULL);
CREATE TABLE Turisti (
  id_turist int(10) NOT NULL AUTO_INCREMENT, 
  nume      varchar(255) NOT NULL, 
  prenume   varchar(255) NOT NULL, 
  email     varchar(255) NOT NULL UNIQUE, 
  parola    varchar(255) NOT NULL, 
  PRIMARY KEY (id_turist), 
  UNIQUE INDEX (id_turist));
ALTER TABLE Turist_Suvenir ADD CONSTRAINT FKTurist_Suv514598 FOREIGN KEY (Turistiid_turist) REFERENCES Turisti (id_turist);
ALTER TABLE Turist_Suvenir ADD CONSTRAINT FKTurist_Suv710020 FOREIGN KEY (Suveniruriid_suvenir) REFERENCES Suveniruri (id_suvenir);
ALTER TABLE Tara_suvenir ADD CONSTRAINT FKTara_suven705151 FOREIGN KEY (Tariid_tara) REFERENCES Tari (id_tara);
ALTER TABLE Beneficiar_suvenir ADD CONSTRAINT FKBeneficiar827371 FOREIGN KEY (Beneficiariid_beneficiar) REFERENCES Beneficiari (id_beneficiar);
ALTER TABLE Beneficiar_suvenir ADD CONSTRAINT FKBeneficiar500950 FOREIGN KEY (Suveniruriid_suvenir) REFERENCES Suveniruri (id_suvenir);
ALTER TABLE Tara_suvenir ADD CONSTRAINT FKTara_suven326288 FOREIGN KEY (Suveniruriid_suvenir) REFERENCES Suveniruri (id_suvenir);

