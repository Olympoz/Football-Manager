
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
(1,"BMS",1 597 856 300,"Marty Daniels"),
(2,"REAL MADRID",2 555 000 000,"Zinedine Zidane" );

INSERT INTO Joueur VALUES
<<<<<<< HEAD
(NULL,"Alex Moran",100,7,"QB",550000000,1,NULL),
(NULL,"Thad Castle",120,54,"ML.B",550000000,1,NULL),
(NULL,"Harmon Tedesco",95,1,"Kicker",505690000,1,NULL),
(NULL,"Craig Shilo",98,33,"Receiver",5753652000,1,NULL);
(NULL,"Radon Randell",96,2,"QB",1000000000,1,NULL);



=======

(NULL,"Alex Moran",100,7,"QB",5 500 000 000,1,NULL),
(NULL,"Thad Castle",120,54,"ML.B",5 500 000 000,1,NULL),
(NULL,"Harmon Tedesco",95,1,"Kicker",5 056 900 000,1,NULL),
(NULL,"Craig Shilo",98,33,"Receiver",5 753 652 000,1,NULL),

(NULL,"Navas",90,1,"Gardien",45 000 000,2,NULL),
(NULL,"Carvajal",90,2,"Défenseur latéral gauche",45 000 000,2,NULL),
(NULL,"Pepe",85,3,"Défenseur latéral droite",25 000 000,2,NULL),
(NULL,"Sergio Ramos",95,4,"Défenseur central",75 000 000,2,NULL),
(NULL,"Varane",85,5,"Défenseur central",85 000 000,2,NULL),
(NULL,"Kroos",90,8,"Milieu défensif",165 000 000,2,NULL),
(NULL,"Ronaldo",97,7,"Milieu latéral",205 000 000,2,NULL),
(NULL,"Nacho",80,6,"Milieu latéral",95 000 000,2,NULL),
(NULL,"Benzema",91,9,"Attaquant",85 000 000,2,NULL),
(NULL,"James",90,10,"Attaquant ",65 000 000,2,NULL),
(NULL,"Bale",93,11,"Milieu latéral",105 000 000,2,NULL);
>>>>>>> 31889e0fcb920b7b426de752a3f69ae92c93d228
