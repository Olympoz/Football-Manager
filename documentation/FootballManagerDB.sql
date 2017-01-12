
DROP DATABASE IF EXISTS footballmanager;

CREATE DATABASE IF NOT EXISTS footballmanager;

USE footballmanager;

#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Equipe
#------------------------------------------------------------

CREATE TABLE Equipe(
        id_equ     int (11) Auto_increment  NOT NULL ,
        name_equ    Varchar (25) ,
        budget_equ Int ,
        coach_equ  Varchar (25) ,
        PRIMARY KEY (id_equ )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Joueur
#------------------------------------------------------------

CREATE TABLE Joueur(
        id_jou        int (11) Auto_increment  NOT NULL ,
        name_jou      Varchar (25) ,
        stats_jou     Int ,
        num_jou       Int ,
        post_jou      Varchar (25) ,
        price_jou     Int ,
        id_equ        Int ,
        id_equ_Equipe Int ,
        PRIMARY KEY (id_jou )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Partie
#------------------------------------------------------------

CREATE TABLE Partie(
        id_part    int (11) Auto_increment  NOT NULL ,
        num_part   Int ,
        scora_part Int ,
        scorb_part Int ,
        PRIMARY KEY (id_part )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Joue
#------------------------------------------------------------

CREATE TABLE Joue(
        id_equ  Int NOT NULL ,
        id_part Int NOT NULL ,
        PRIMARY KEY (id_equ ,id_part )
)ENGINE=InnoDB;

ALTER TABLE Joueur ADD CONSTRAINT FK_Joueur_id_equ FOREIGN KEY (id_equ) REFERENCES Equipe(id_equ);
ALTER TABLE Joueur ADD CONSTRAINT FK_Joueur_id_equ_Equipe FOREIGN KEY (id_equ_Equipe) REFERENCES Equipe(id_equ);
ALTER TABLE Joue ADD CONSTRAINT FK_Joue_id_equ FOREIGN KEY (id_equ) REFERENCES Equipe(id_equ);
ALTER TABLE Joue ADD CONSTRAINT FK_Joue_id_part FOREIGN KEY (id_part) REFERENCES Partie(id_part);


#Ajout des tables

INSERT INTO Equipe VALUES 
(1,"BMS",1597856300,"Marty Daniels"),




INSERT INTO Joueur VALUES
(1,"Alex Moran",100,7,"QB",550000000,1,NULL),
(2,"Thad Castle",120,54,"ML.B",550000000,1,NULL),
(3,"Harmon Tedesco",95,1,"Kicker",505690000,1,NULL),
(4,"Craig Shilo",98,33,"Receiver",5753652000,1,NULL);
