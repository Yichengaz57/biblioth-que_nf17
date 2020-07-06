/*Avant de créer des tables , on va d'abord supprimer toutes les tables et les vues correpondantes*/
DROP TABLE IF EXISTS Est_valable_dans CASCADE;

DROP TABLE IF EXISTS Periode_adhesion CASCADE;

DROP TABLE IF EXISTS Compte CASCADE;

DROP TABLE IF EXISTS Propose CASCADE;

DROP TABLE IF EXISTS Sanction CASCADE;

DROP TABLE IF EXISTS Emprunt CASCADE;

DROP TABLE IF EXISTS Ecrire CASCADE;

DROP TABLE IF EXISTS Composer CASCADE;

DROP TABLE IF EXISTS Interpreter CASCADE;

DROP TABLE IF EXISTS Realiser CASCADE;

DROP TABLE IF EXISTS Jouer CASCADE;

DROP TABLE IF EXISTS Auteur CASCADE;

DROP TABLE IF EXISTS Acteur CASCADE;

DROP TABLE IF EXISTS Realisateur CASCADE;

DROP TABLE IF EXISTS Compositeur CASCADE;

DROP TABLE IF EXISTS Interprete CASCADE;

DROP TABLE IF EXISTS RessourceLivre CASCADE;

DROP TABLE IF EXISTS RessourceFilm CASCADE;

DROP TABLE IF EXISTS RessourceEnregistrement   CASCADE;

DROP TABLE IF EXISTS Exemplaire CASCADE;

DROP TABLE IF EXISTS Information CASCADE;

DROP TABLE IF EXISTS Ressource CASCADE;

DROP TABLE IF EXISTS Adherent CASCADE;

DROP TABLE IF EXISTS Personnel CASCADE;

CREATE TABLE Personnel (
    email varchar PRIMARY KEY,
    nom varchar NOT NULL,
    prenom varchar NOT NULL,
    adresse varchar
);

CREATE TABLE Adherent (
    email varchar PRIMARY KEY,
    nom varchar NOT NULL,
    prenom varchar NOT NULL,
    adresse varchar,
    numero_tel varchar NOT NULL,
    date_naissance date NOT NULL,
    sanctionne boolean NOT NULL,
    blackliste boolean NOT NULL,
    ajoute_par varchar NOT NULL,
    FOREIGN KEY (ajoute_par) REFERENCES Personnel (email)
);

CREATE TABLE Ressource (
    code numeric(15) PRIMARY KEY,
    genre varchar(255) NOT NULL,
    email_p varchar(50) NOT NULL,
    FOREIGN KEY (email_p) REFERENCES Personnel (email)
);

CREATE TABLE RessourceLivre (
    code_ressource numeric(15) PRIMARY KEY,
    ISBN numeric(15) UNIQUE NOT NULL,
    resume varchar(255),
    langue varchar(50) NOT NULL,
    FOREIGN KEY (code_ressource) REFERENCES Ressource (code)
);

CREATE TABLE RessourceFilm (
    code_ressource numeric(15) PRIMARY KEY,
    langue varchar(50) NOT NULL,
    synopsis varchar(255),
    longueur varchar(50) NOT NULL,
    FOREIGN KEY (code_ressource) REFERENCES Ressource (code)
);

CREATE TABLE RessourceEnregistrement (
    code_ressource numeric(15) PRIMARY KEY,
    longueur varchar(50) NOT NULL,
    FOREIGN KEY (code_ressource) REFERENCES Ressource (code)
);

CREATE TABLE Information (
    titre varchar(50),
    date_apparition date,
    editeur varchar(50),
    prix real NOT NULL,
    code_ressource numeric(15),
    PRIMARY KEY (titre, date_apparition, editeur),
    FOREIGN KEY (code_ressource) REFERENCES Ressource (code),
    UNIQUE (code_ressource)
);

CREATE TABLE Exemplaire (
    code_exemplaire numeric(15),
    code_ressource numeric(15),
    etat varchar(5) NOT NULL CHECK (etat IN ('neuf', 'bon', 'abime', 'perdu')),
    code_classification numeric(15),
    ajoute_par varchar(30) NOT NULL,
    PRIMARY KEY (code_exemplaire, code_ressource),
    FOREIGN KEY (code_ressource) REFERENCES Ressource (code),
    FOREIGN KEY (ajoute_par) REFERENCES Personnel (email)
);

CREATE TABLE Auteur (
    id serial PRIMARY KEY,
    prenonm varchar(25) NOT NULL,
    nom varchar(25) NOT NULL,
    nationalite varchar(50),
    date_naissance date
);

CREATE TABLE Compositeur (
    id serial PRIMARY KEY,
    prenonm varchar(25) NOT NULL,
    nom varchar(25) NOT NULL,
    nationalite varchar(50),
    date_naissance date
);

CREATE TABLE Realisateur (
    id serial PRIMARY KEY,
    prenonm varchar(25) NOT NULL,
    nom varchar(25) NOT NULL,
    nationalite varchar(50),
    date_naissance date
);

CREATE TABLE Acteur (
    id serial PRIMARY KEY,
    prenonm varchar(25) NOT NULL,
    nom varchar(25) NOT NULL,
    nationalite varchar(50),
    date_naissance date
);

CREATE TABLE Interprete (
    id serial PRIMARY KEY,
    prenonm varchar(25) NOT NULL,
    nom varchar(25) NOT NULL,
    nationalite varchar(50),
    date_naissance date
);

CREATE TABLE Ecrire (
    code numeric(15) REFERENCES RessourceLivre (code_ressource),
    id_auteur integer REFERENCES Auteur (id),
    PRIMARY KEY (code, id_auteur)
);

CREATE TABLE Composer (
    code numeric(15) REFERENCES RessourceEnregistrement (code_ressource),
    id_compositeur integer REFERENCES Compositeur (id),
    PRIMARY KEY (code, id_compositeur)
);

CREATE TABLE Interpreter (
    code numeric(15) REFERENCES RessourceEnregistrement (code_ressource),
    id_interprete integer REFERENCES Interprete (id),
    PRIMARY KEY (code, id_interprete)
);

CREATE TABLE Realiser (
    code numeric(15) REFERENCES RessourceFilm (code_ressource),
    id_realisateur integer REFERENCES Realisateur (id),
    PRIMARY KEY (code, id_realisateur)
);

CREATE TABLE Jouer (
    code numeric(15) REFERENCES RessourceFilm (code_ressource),
    id_acteur integer REFERENCES Acteur (id),
    PRIMARY KEY (code, id_acteur)
);

CREATE TABLE Emprunt (
    email varchar(50),
    code numeric(15),
    code_ressource numeric(15),
    date_debut date,
    duree_pret integer NOT NULL,
    date_fin_reel date,
    PRIMARY KEY (email, code, code_ressource,date_debut),
    FOREIGN KEY (email) REFERENCES Adherent (email),
    FOREIGN KEY (code, code_ressource) REFERENCES Exemplaire (code_exemplaire, code_ressource)
);

CREATE TABLE Sanction (
    email varchar(50),
    code numeric(15),
    code_ressource numeric(15),
    date_sanction date,
    jours_retard numeric(15),
    etat_retour varchar(50) CHECK (etat_retour = 'abime' OR etat_retour = 'perdu'),
    frais float,
    effectue boolean NOT NULL,
    t varchar(50) NOT NULL CHECK (t = 'retard' OR t = 'remboursement'),
    PRIMARY KEY (email, code, code_ressource,date_sanction),
    FOREIGN KEY (email) REFERENCES Adherent (email),
    FOREIGN KEY (code, code_ressource) REFERENCES Exemplaire (code_exemplaire, code_ressource),
    CHECK ((t = 'retard' AND jours_retard IS NOT NULL AND frais IS NULL AND etat_retour IS NULL) OR (t = 'remboursement' AND frais IS NOT NULL AND jours_retard IS NULL))
);

CREATE TABLE Propose (
    email_a varchar,
    code_ressource numeric(15),
    PRIMARY KEY (email_a, code_ressource),
    FOREIGN KEY (email_a) REFERENCES Adherent (email),
    FOREIGN KEY (code_ressource) REFERENCES Ressource (code)
);

CREATE TABLE Compte (
    login VARCHAR PRIMARY KEY,
    mdp varchar NOT NULL,
    email_a varchar,
    email_p varchar,
    FOREIGN KEY (email_a) REFERENCES Adherent (email),
    FOREIGN KEY (email_p) REFERENCES Personnel (email),
    CHECK ((email_p IS NOT NULL AND email_a IS NULL) OR (email_p IS NULL AND email_a IS NOT NULL))
);

CREATE TABLE Periode_adhesion (
    numero_adhesion serial PRIMARY KEY,
    date_debut date NOT NULL,
    date_fin date
);

CREATE TABLE Est_valable_dans (
    numero_a integer,
    email_a varchar,
    PRIMARY KEY (numero_a, email_a),
    FOREIGN KEY (numero_a) REFERENCES Periode_adhesion (numero_adhesion),
    FOREIGN KEY (email_a) REFERENCES Adherent (email)
);

