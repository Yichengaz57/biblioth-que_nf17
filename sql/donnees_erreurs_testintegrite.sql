/****************************** Personnel ******************************/
--------VPersonnelSansCompte

INSERT INTO Personnel (email, nom, prenom, adresse)
    VALUES ('jiawen.lyu@etu.utc.fr', 'Lyu', 'Jiawen', '7558 Eggendart Crossing');


/****************************** Adherent ******************************/
--------VAdherentSansCompte

INSERT INTO Adherent (email, nom, prenom, numero_tel, date_naissance, sanctionne, blackliste, ajoute_par)
    VALUES ('jiawen.lyu@etu.utc.fr', 'Lyu', 'Jiawen', '825-26-4806', '1956-12-27', FALSE, FALSE, 'csomerlie2@mayoclinic.com');

--------Adherent expiré
INSERT INTO Adherent (email, nom, prenom, numero_tel, date_naissance, sanctionne, blackliste, ajoute_par)
    VALUES ('cfolger0@istockphoto.com', 'Folger', 'Coletta', '606-15-8665', '2019-12-04', FALSE, FALSE, 'csomerlie2@mayoclinic.com');


/****************************** Ressource ******************************/
-------------------VLivreExclutEnre

INSERT INTO RessourceEnregistrement (code_ressource, longueur)
    VALUES (3646029714, '6min');

-------------------VLivreExclutFilm
INSERT INTO RessourceFilm (code_ressource, langue, synopsis, longueur)
    VALUES (3646029714, 'English', 'Lama pacos', '1h30min');

-------------------VEnreExclutFilm
INSERT INTO RessourceFilm (code_ressource, langue, synopsis, longueur)
    VALUES (0712848231, 'English', 'Lama pacos', '1h30min');

-------------------Donnée_érronée--instance-de-classe-mere-et-sans-adherent-propose
INSERT INTO Ressource (code, genre, email_p)
    VALUES (5722271038, 'Punk in London', 'pconti0@sina.com.cn');


/****************************** Exemplaire ******************************/
-------------------Une exemplaire avec mauvais état

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (4, 6564649401, 'abime', 4652209239, 'pconti0@sina.com.cn');


/****************************** CONTRIBUTION ******************************/
/****************************** Emprunt ******************************/
--------------------------------Donnée érronée--------------------------------
-----cette exemplaire avec mauvais état ne peut être emprunté

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('dwykey3@icq.com', 4, 6564649401, '2019-05-15', 10, '2019-05-25');

----cette exemplaire n'est pas disponible
INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('csatyford1@networkadvertising.org', 1, 0712848231, '2019-04-4', 10, '2019-04-30');

-------cette exemplaire n'exsite pas
INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('cpoge4@ibm.com', 4, 6564649401, '2019-04-4', 1, '2019-04-5');


/****************************** Sanction ******************************/
--Cette utilisateur n'emprunt jamais une exemplaire

INSERT INTO Sanction (email, code, code_ressource, date_sanction, jours_retard, t, effectue)
    VALUES ('dwykey3@icq.com', 1, 3646029714, '2019-04-04', 2, 'retard', FALSE);


/****************************** Propose ******************************/
--VRessourceSansAdherentPropose

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('pmedcalf2@goodreads.com', 8758131338);


/****************************** Periode_adhesion ******************************/
---L'adhésion de l'utilisateur a expiré mais il peut emprunter des exemplaires à 4-24

INSERT INTO Periode_adhesion (numero_adhesion, date_debut, date_fin)
    VALUES (6, '2019-02-06', '2019-03-14');


/****************************** Est_valable_dans ******************************/
-----------VAdherentSansPeriode-------

INSERT INTO Est_valable_dans (numero_a, email_a)
    VALUES (8, 'jiawen.lyu@etu.utc.fr');

-----------VPeriodeSansAdherent-------
INSERT INTO Est_valable_dans (numero_a, email_a)
    VALUES (2, 'jiawen.lyu@etu.utc.fr');

