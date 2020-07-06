DELETE FROM Est_valable_dans;

DELETE FROM Periode_adhesion;

DELETE FROM Compte;

DELETE FROM Propose;

DELETE FROM Sanction;

DELETE FROM Emprunt;

DELETE FROM Ecrire;

DELETE FROM Composer;

DELETE FROM Interpreter;

DELETE FROM Realiser;

DELETE FROM Jouer;

DELETE FROM Auteur;

DELETE FROM Acteur;

DELETE FROM Realisateur;

DELETE FROM Compositeur;

DELETE FROM Interprete;

DELETE FROM RessourceLivre;

DELETE FROM RessourceFilm;

DELETE FROM RessourceEnregistrement;

DELETE FROM Exemplaire;

DELETE FROM Information;

DELETE FROM Ressource;

DELETE FROM Adherent;

DELETE FROM Personnel;

--------------------------------Personnel--------------------------------
INSERT INTO Personnel (email, nom, prenom, adresse)
    VALUES ('pconti0@sina.com.cn', 'Dumingo', 'Kassey', '27130 Stephen Park');

INSERT INTO Personnel (email, nom, prenom, adresse)
    VALUES ('bborges3@ft.com', 'Sirett', 'Lela', '90992 Division Place');

INSERT INTO Personnel (email, nom, prenom, adresse)
    VALUES ('csymington1@yellowpages.com', 'Meddemmen', 'Wylma', '1 Pierstorff Way');

INSERT INTO Personnel (email, nom, prenom, adresse)
    VALUES ('csomerlie2@mayoclinic.com', 'Doerffer', 'Ferrel', '089 Holmberg Plaza');

INSERT INTO Personnel (email, nom, prenom, adresse)
    VALUES ('jbattelle4@tinypic.com', 'Daley', 'Christa', '7558 Eggendart Crossing');

--------------------------------Adherent--------------------------------
INSERT INTO Adherent (email, nom, prenom, numero_tel, date_naissance, sanctionne, blackliste, ajoute_par)
    VALUES ('dwykey3@icq.com', 'Joyan', 'MacMenamie', '169-44-6925', '1998-06-13', FALSE, FALSE, 'bborges3@ft.com');

INSERT INTO Adherent (email, nom, prenom, numero_tel, date_naissance, sanctionne, blackliste, ajoute_par)
    VALUES ('pmedcalf2@goodreads.com', 'Petrina', 'Haward', '493-06-0930', '1985-10-26', FALSE, FALSE, 'csymington1@yellowpages.com');

INSERT INTO Adherent (email, nom, prenom, numero_tel, date_naissance, sanctionne, blackliste, ajoute_par)
    VALUES ('csatyford1@networkadvertising.org', 'Anallese', 'Fallows', '825-26-4806', '1956-12-27', FALSE, FALSE, 'csomerlie2@mayoclinic.com');

INSERT INTO Adherent (email, nom, prenom, numero_tel, date_naissance, sanctionne, blackliste, ajoute_par)
    VALUES ('cfolger0@istockphoto.com', 'Yicheng', 'WANG', '825-26-4806', '1999-01-27', FALSE, FALSE, 'csomerlie2@mayoclinic.com');

------Adherent sanctionne
INSERT INTO Adherent (email, nom, prenom, numero_tel, date_naissance, sanctionne, blackliste, ajoute_par)
    VALUES ('cpoge4@ibm.com', 'Emanuele', 'Hiorn', '241-95-1053', '1951-07-14', TRUE, FALSE, 'pconti0@sina.com.cn');

INSERT INTO Adherent (email, nom, prenom, numero_tel, date_naissance, sanctionne, blackliste, ajoute_par)
    VALUES ('gtodaro0@bbb.org', 'Eleonora', 'Sinkin', '269-06-4852', '1997-10-05', TRUE, FALSE, 'jbattelle4@tinypic.com');

-------Blacklist
INSERT INTO Adherent (email, nom, prenom, numero_tel, date_naissance, sanctionne, blackliste, ajoute_par)
    VALUES ('ifinker1@hc360.com', 'Finker', 'Idaline', '407-60-5656', '2019-07-20', TRUE, TRUE, 'csomerlie2@mayoclinic.com');

-- --------------------------------Ressource--------------------------------
INSERT INTO Ressource (code, genre, email_p)
    VALUES (9617436779, 'humaine', 'pconti0@sina.com.cn');

INSERT INTO RessourceLivre (code_ressource, ISBN, resume, langue)
    VALUES (9617436779, 4173348681, 'fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit', 'Hungarian');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (3814671066, 'matérielle', 'pconti0@sina.com.cn');

INSERT INTO RessourceLivre (code_ressource, ISBN, resume, langue)
    VALUES (3814671066, 2635032106, 'velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo', 'Persian');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (9007405675, 'humaine', 'pconti0@sina.com.cn');

INSERT INTO RessourceLivre (code_ressource, ISBN, resume, langue)
    VALUES (9007405675, 3258193568, 'sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio', 'Oriya');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (9629118130, 'matérielle', 'pconti0@sina.com.cn');

INSERT INTO RessourceLivre (code_ressource, ISBN, resume, langue)
    VALUES (9629118130, 5568783977, 'in ante vestibulum ante ipsum primis in faucibus orci luctus', 'English');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (8758131337, 'matérielle', 'pconti0@sina.com.cn');

INSERT INTO RessourceLivre (code_ressource, ISBN, resume, langue)
    VALUES (8758131337, 5148998547, 'nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea', 'Dari');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (6564649401, 'humaine', 'pconti0@sina.com.cn');

INSERT INTO RessourceLivre (code_ressource, ISBN, resume, langue)
    VALUES (6564649401, 0266480848, 'Spermophilus lateralis', 'English');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (3646029714, 'matérielle', 'bborges3@ft.com');

INSERT INTO RessourceLivre (code_ressource, ISBN, resume, langue)
    VALUES (3646029714, 6815136834, 'Dasyurus viverrinus', 'English');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (0712848231, 'financière', 'csymington1@yellowpages.com');

INSERT INTO RessourceEnregistrement (code_ressource, longueur)
    VALUES (0712848231, '5min');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (3797935374, 'drame', 'csomerlie2@mayoclinic.com');

INSERT INTO RessourceFilm (code_ressource, langue, synopsis, longueur)
    VALUES (3797935374, 'English', 'Lama pacos', '1h30min');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (1037244842, 'comédie', 'jbattelle4@tinypic.com');

INSERT INTO RessourceFilm (code_ressource, langue, synopsis, longueur)
    VALUES (1037244842, 'English', 'Platalea leucordia', '2h');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (1834020018, 'comédie', 'pconti0@sina.com.cn');

INSERT INTO RessourceFilm (code_ressource, langue, synopsis, longueur)
    VALUES (1834020018, 'English', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', '2h');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (1879280205, 'comédie', 'pconti0@sina.com.cn');

INSERT INTO RessourceFilm (code_ressource, langue, synopsis, longueur)
    VALUES (1879280205, 'English', 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat', '2h');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (1677099186, 'love', 'pconti0@sina.com.cn');

INSERT INTO RessourceEnregistrement (code_ressource, longueur)
    VALUES (1677099186, '3min');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (1093043660, 'love', 'pconti0@sina.com.cn');

INSERT INTO RessourceEnregistrement (code_ressource, longueur)
    VALUES (1093043660, '3min');

INSERT INTO Ressource (code, genre, email_p)
    VALUES (5792271038, 'love', 'pconti0@sina.com.cn');

INSERT INTO RessourceEnregistrement (code_ressource, longueur)
    VALUES (5792271038, '6min');

--------------------------------Information--------------------------------
INSERT INTO Information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('Rollerball', '2019-05-12', 'Gertrudis Stainburn', 32.64, 6564649401);

INSERT INTO Information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('James and the Giant Peach', '2019-05-08', 'Carmela Ansley', 20.33, 3646029714);

INSERT INTO Information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('I Woke Up Early the Day I Died', '2019-03-11', 'Red Hamner', 8.01, 0712848231);

INSERT INTO information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('Snow White (Blancanieves)', '2017-11-07', 'Hallmark Financial Services, Inc.', '281.20', '3797935374');

INSERT INTO information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('Heartbeeps', '2017-09-03', 'USA Technologies, Inc.', '143.82', '1037244842');

INSERT INTO information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('Even Angels Eat Beans', '2013-12-12', 'Tetraphase Pharmaceuticals, Inc.', '163.18', '1834020018');

INSERT INTO information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('Barking Dogs Never Bite (Flandersui gae)', '2017-04-15', 'The Blackstone Group L.P.', '264.63', '1879280205');

INSERT INTO information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('Mustela nigripes', '2017-08-18', 'Nuveen Credit Strategies Income Fund', '116.08', '9617436779');

INSERT INTO information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('Acrantophis madagascariensis', '2018-09-27', 'Craft Brew Alliance, Inc.', '227.51', '3814671066');

INSERT INTO information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('Porphyrio porphyrio', '2019-05-04', 'Grupo Televisa S.A.', '110.78', '9007405675');

INSERT INTO information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('Raphicerus campestris', '2012-12-22', 'Air Products and Chemicals, Inc.', '176.31', '9629118130');

INSERT INTO information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('Priodontes maximus', '2015-04-01', 'Vanguard Short-Term Corporate Bond ETF', '202.39', '8758131337');

INSERT INTO information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('ipsum aliquam non ', '2018-10-14', 'Calpine Corporation', '197.80', '1677099186');

INSERT INTO information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('commodo placerat', '2017-09-05', 'Stone Harbor Emerging ', '88.37', '1093043660');

INSERT INTO information (titre, date_apparition, editeur, prix, code_ressource)
    VALUES ('sollicitudin vitae consectetuer ', '2017-09-11', 'GATX Corporation', '299.42', '5792271038');

--------------------------------Exemplaire--------------------------------
INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (1, 6564649401, 'neuf', 4652209282, 'pconti0@sina.com.cn');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (2, 6564649401, 'neuf', 4652209283, 'pconti0@sina.com.cn');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (3, 6564649401, 'neuf', 4652209284, 'pconti0@sina.com.cn');

-----
INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (1, 9617436779, 'neuf', 1465209282, 'pconti0@sina.com.cn');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (2, 9617436779, 'neuf', 1465209283, 'pconti0@sina.com.cn');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (3, 9617436779, 'neuf', 1465209284, 'pconti0@sina.com.cn');

----
INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (1, 3646029714, 'neuf', 0942861868, 'bborges3@ft.com');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (2, 3646029714, 'neuf', 0942861869, 'bborges3@ft.com');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (3, 3646029714, 'neuf', 0942861870, 'bborges3@ft.com');

----
INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (1, 9007405675, 'neuf', 4658861868, 'bborges3@ft.com');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (2, 9007405675, 'neuf', 4658861869, 'bborges3@ft.com');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (3, 9007405675, 'neuf', 4658861870, 'bborges3@ft.com');

----
INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (1, 0712848231, 'neuf', 2021937712, 'csymington1@yellowpages.com');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (2, 0712848231, 'neuf', 2021937713, 'csymington1@yellowpages.com');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (3, 0712848231, 'neuf', 2021937714, 'csymington1@yellowpages.com');

---
INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (1, 5792271038, 'neuf', 3849937712, 'csymington1@yellowpages.com');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (2, 5792271038, 'neuf', 3849937713, 'csymington1@yellowpages.com');

---
INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (1, 1093043660, 'neuf', 2395937714, 'csymington1@yellowpages.com');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (2, 1093043660, 'neuf', 2395937715, 'csymington1@yellowpages.com');

---
INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (1, 1879280205, 'neuf', 8390937713, 'csymington1@yellowpages.com');

INSERT INTO Exemplaire (code_exemplaire, code_ressource, etat, code_classification, ajoute_par)
    VALUES (2, 1879280205, 'neuf', 8390937714, 'csymington1@yellowpages.com');

--------------------------------CONTRIBUTEUR--------------------------------
--acteur

INSERT INTO acteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (1, 'Rita', 'Hancke', 'Russia', '1920/05/15');

INSERT INTO acteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (2, 'Jeffie', 'Broader', 'China', '1930/03/28');

INSERT INTO acteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (3, 'Ric', 'Bilton', 'China', '1897/09/12');

INSERT INTO acteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (4, 'Velvet', 'Chezelle', 'Mongolia', '1953/08/25');

INSERT INTO acteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (5, 'Trudey', 'McKevany', 'China', '1911/07/27');

INSERT INTO acteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (6, 'Pascal', 'Pounsett', 'Syria', '1895/02/15');

INSERT INTO acteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (7, 'Leandra', 'Thornthwaite', 'Saudi Arabia', '1931/05/25');

INSERT INTO acteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (8, 'Samara', 'Bennion', 'Brazil', '1908/02/22');

INSERT INTO acteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (9, 'Zandra', 'Base', 'China', '1978/04/15');

--realisateur
INSERT INTO realisateur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (81, 'Geri', 'Linggood', 'Greenland', '1924/12/23');

INSERT INTO realisateur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (82, 'Tomi', 'Besantie', 'Mexico', '1964/08/07');

INSERT INTO realisateur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (83, 'Konstantin', 'Pauleau', 'Thailand', '1968/08/30');

INSERT INTO realisateur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (84, 'Karlen', 'Cheales', 'China', '1960/01/02');

INSERT INTO realisateur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (85, 'Frayda', 'Deyenhardt', 'Brazil', '1905/05/17');

INSERT INTO realisateur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (86, 'Frants', 'Lilliman', 'New Zealand', '1935/01/03');

INSERT INTO realisateur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (87, 'Emili', 'Huge', 'Japan', '1932/02/27');

INSERT INTO realisateur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (88, 'Fan', 'Higgoe', 'Portugal', '1975/09/13');

INSERT INTO realisateur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (89, 'Morty', 'Ladlow', 'Sweden', '1956/08/10');

--auteur
INSERT INTO auteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (21, 'Bernette', 'Ghelarducci', 'North Korea', '1629/11/04');

INSERT INTO auteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (22, 'Rebecca', 'Crucetti', NULL, '1848/06/23');

INSERT INTO auteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (23, 'Alison', 'Britland', 'Portugal', '1869/11/13');

INSERT INTO auteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (24, 'Amalita', 'Mackriell', 'France', '1835/08/26');

INSERT INTO auteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (25, 'Renato', 'Maciejak', 'United States', '1780/11/27');

INSERT INTO auteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (26, 'Nobe', 'Hemmingway', 'Russia', '1704/09/09');

INSERT INTO auteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (27, 'Ailina', 'Ruston', 'Philippines', '1878/07/08');

INSERT INTO auteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (28, 'Jayne', 'Rearden', 'Mexico', '1989/07/13');

INSERT INTO auteur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (29, 'Garret', 'Archambault', 'Philippines', '1614/06/28');

-- interprete
INSERT INTO interprete (id, prenonm, nom, nationalite, date_naissance)
    VALUES (41, 'Sarajane', 'Ivakhin', 'Russia', '1584/01/03');

INSERT INTO interprete (id, prenonm, nom, nationalite, date_naissance)
    VALUES (42, 'Katee', 'Siseland', 'Tajikistan', '1684/11/24');

INSERT INTO interprete (id, prenonm, nom, nationalite, date_naissance)
    VALUES (43, 'Shae', 'Goncalo', 'Indonesia', '1508/04/29');

INSERT INTO interprete (id, prenonm, nom, nationalite, date_naissance)
    VALUES (44, 'Danielle', 'Nineham', 'China', '1748/09/04');

INSERT INTO interprete (id, prenonm, nom, nationalite, date_naissance)
    VALUES (45, 'Hector', 'Rainsden', 'Canada', '1806/10/02');

INSERT INTO interprete (id, prenonm, nom, nationalite, date_naissance)
    VALUES (46, 'Conny', 'Rikard', 'China', '1623/06/07');

INSERT INTO interprete (id, prenonm, nom, nationalite, date_naissance)
    VALUES (47, 'Devin', 'Denacamp', 'China', '1566/06/19');

INSERT INTO interprete (id, prenonm, nom, nationalite, date_naissance)
    VALUES (48, 'Timothee', 'Paddingdon', 'Indonesia', '1897/09/17');

INSERT INTO interprete (id, prenonm, nom, nationalite, date_naissance)
    VALUES (49, 'Bernie', 'Strickler', 'Madagascar', '1724/01/07');

-- compositeur
INSERT INTO compositeur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (61, 'Donni', 'Souten', 'China', '1735/01/21');

INSERT INTO compositeur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (62, 'Janie', 'Filtness', 'Peru', '1865/01/07');

INSERT INTO compositeur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (63, 'Kaitlin', 'Howsin', 'Brazil', '1885/08/25');

INSERT INTO compositeur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (64, 'Flint', 'Bonham', 'Indonesia', '1702/11/27');

INSERT INTO compositeur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (65, 'Gus', 'Durward', 'Philippines', '1756/04/08');

INSERT INTO compositeur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (66, 'Elvin', 'Mulqueeny', 'Peru', '1523/07/12');

INSERT INTO compositeur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (67, 'Amory', 'Kropach', 'Iran', '1900/07/26');

INSERT INTO compositeur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (68, 'Gottfried', 'Boc', 'China', '1616/04/29');

INSERT INTO compositeur (id, prenonm, nom, nationalite, date_naissance)
    VALUES (69, 'Alaster', 'Rudkin', 'China', '1890/08/01');

--------------------------------CONTRIBUTION--------------------------------
-- ecrit

INSERT INTO ecrire (code, id_auteur)
    VALUES (9617436779, 21);

INSERT INTO ecrire (code, id_auteur)
    VALUES (3814671066, 22);

INSERT INTO ecrire (code, id_auteur)
    VALUES (9007405675, 23);

INSERT INTO ecrire (code, id_auteur)
    VALUES (9629118130, 24);

INSERT INTO ecrire (code, id_auteur)
    VALUES (8758131337, 25);

INSERT INTO ecrire (code, id_auteur)
    VALUES (6564649401, 26);

------------VLivreSansAuteur
-- INSERT INTO ecrire (code, id_auteur)
--     VALUES (3646029714, 27);
--realiser

INSERT INTO realiser (code, id_realisateur)
    VALUES (3797935374, 81);

INSERT INTO realiser (code, id_realisateur)
    VALUES (1037244842, 82);

INSERT INTO realiser (code, id_realisateur)
    VALUES (1834020018, 83);

------------VFilmSansRealisateur
-- INSERT INTO realiser (code, id_realisateur)
--     VALUES (1879280205, 84);
-- jouer

INSERT INTO jouer (code, id_acteur)
    VALUES (3797935374, 1);

INSERT INTO jouer (code, id_acteur)
    VALUES (1037244842, 2);

INSERT INTO jouer (code, id_acteur)
    VALUES (1834020018, 3);

------------VFilmSansRealisateur
-- INSERT INTO jouer (code, id_acteur)
--     VALUES (1879280205, 4);
-- interpreter

INSERT INTO interpreter (code, id_interprete)
    VALUES (0712848231, 41);

INSERT INTO interpreter (code, id_interprete)
    VALUES (1677099186, 42);

INSERT INTO interpreter (code, id_interprete)
    VALUES (1093043660, 43);

------------VEnregistrementSansInterprete
-- INSERT INTO interpreter (code, id_interprete)
--     VALUES (5792271038, 44);
--composer

INSERT INTO composer (code, id_compositeur)
    VALUES (0712848231, 61);

INSERT INTO composer (code, id_compositeur)
    VALUES (1677099186, 62);

INSERT INTO composer (code, id_compositeur)
    VALUES (1093043660, 63);

------------VEnregistrementSansCompositeur
-- INSERT INTO composer (code, id_compositeur)
--     VALUES (5792271038, 64);
--------------------------------Emprunt--------------------------------

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('csatyford1@networkadvertising.org', 1, 3646029714, '2019-04-4', 20, '2019-04-24');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('pmedcalf2@goodreads.com', 1, 0712848231, '2019-04-4', 30, '2019-04-24');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('csatyford1@networkadvertising.org', 2, 3646029714, '2019-04-4', 3, '2019-04-7');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('pmedcalf2@goodreads.com', 2, 0712848231, '2019-04-4', 12, '2019-04-30');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('gtodaro0@bbb.org', 1, 6564649401, '2019-04-4', 10, '2019-04-14');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('pmedcalf2@goodreads.com', 1, 9617436779, '2019-04-25', 1, '2019-04-26');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('csatyford1@networkadvertising.org', 2, 9617436779, '2019-04-8', 3, '2019-04-11');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('pmedcalf2@goodreads.com', 2, 9007405675, '2019-05-01', 12, '2019-05-13');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('gtodaro0@bbb.org', 1, 6564649401, '2019-04-15', 10, '2019-04-25');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('csatyford1@networkadvertising.org', 1, 3646029714, '2019-04-25', 2, '2019-04-27');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('pmedcalf2@goodreads.com', 1, 9617436779, '2019-05-25', 1, '2019-05-26');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('csatyford1@networkadvertising.org', 2, 9007405675, '2019-04-8', 3, '2019-04-11');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('pmedcalf2@goodreads.com', 2, 6564649401, '2019-05-01', 12, '2019-05-13');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('gtodaro0@bbb.org', 1, 6564649401, '2019-05-15', 10, '2019-05-25');

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('csatyford1@networkadvertising.org', 1, 3646029714, '2019-04-29', 2, '2019-05-27');

----CAS Sanction
INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('cpoge4@ibm.com', 3, 3646029714, '2019-04-4', 6, NULL);

-- INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
--     VALUES ('gtodaro0@bbb.org', 2, 9617436779, '2019-04-4', 2, NULL);
-- INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
--     VALUES ('gtodaro0@bbb.org', 3, 6564649401, '2019-04-4', 3, NULL);

INSERT INTO Emprunt (email, code, code_ressource, date_debut, duree_pret, date_fin_reel)
    VALUES ('gtodaro0@bbb.org', 3, 9617436779, '2019-04-4', 5, NULL);

--------------------------------Sanction--------------------------------
INSERT INTO Sanction (email, code, code_ressource, date_sanction, etat_retour, frais, effectue, t)
    VALUES ('cpoge4@ibm.com', 3, 3646029714, '2019-04-04', 'perdu', 22.33, FALSE, 'remboursement');

INSERT INTO Sanction (email, code, code_ressource, date_sanction, etat_retour, frais, effectue, t)
    VALUES ('gtodaro0@bbb.org', 2, 9617436779, '2019-04-04', 'perdu', 116.08, TRUE, 'remboursement');

INSERT INTO Sanction (email, code, code_ressource, date_sanction, jours_retard, t, effectue)
    VALUES ('gtodaro0@bbb.org', 3, 6564649401, '2019-04-7', 4, 'retard', FALSE);

INSERT INTO Sanction (email, code, code_ressource, date_sanction, jours_retard, t, effectue)
    VALUES ('gtodaro0@bbb.org', 3, 9617436779, '2019-04-9', 5, 'retard', FALSE);

--------------------------------Propose--------------------------------
INSERT INTO Propose (email_a, code_ressource)
    VALUES ('dwykey3@icq.com', 9617436779);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('dwykey3@icq.com', 3814671066);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('cpoge4@ibm.com', 9007405675);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('cpoge4@ibm.com', 9629118130);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('dwykey3@icq.com', 6564649401);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('dwykey3@icq.com', 3646029714);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('dwykey3@icq.com', 0712848231);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('dwykey3@icq.com', 3797935374);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('dwykey3@icq.com', 1037244842);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('dwykey3@icq.com', 1834020018);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('dwykey3@icq.com', 1879280205);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('dwykey3@icq.com', 1677099186);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('dwykey3@icq.com', 1093043660);

INSERT INTO Propose (email_a, code_ressource)
    VALUES ('dwykey3@icq.com', 5792271038);

--------------------------------Compte--------------------------------
-----------------------Compte_Personnel-----------------------

INSERT INTO Compte (LOGIN, mdp, email_a, email_p)
    VALUES ('Mahalia', 'yGtL3R7AsEbx', NULL, 'pconti0@sina.com.cn');

INSERT INTO Compte (LOGIN, mdp, email_a, email_p)
    VALUES ('Joseph', 'jCJQVG', NULL, 'bborges3@ft.com');

INSERT INTO Compte (LOGIN, mdp, email_a, email_p)
    VALUES ('Lila', 'uXuVD4', NULL, 'csymington1@yellowpages.com');

INSERT INTO Compte (LOGIN, mdp, email_a, email_p)
    VALUES ('Jasmina', '2FpEZ1s7I0A', NULL, 'csomerlie2@mayoclinic.com');

INSERT INTO Compte (LOGIN, mdp, email_a, email_p)
    VALUES ('Dniren', 'gCf8L1D', NULL, 'jbattelle4@tinypic.com');

-----------------------Compte_Adhérent-----------------------
INSERT INTO Compte (LOGIN, mdp, email_a, email_p)
    VALUES ('Sindee', '8STD6wXQ', 'cpoge4@ibm.com', NULL);

INSERT INTO Compte (LOGIN, mdp, email_a, email_p)
    VALUES ('Helene', 'YaeYnk', 'dwykey3@icq.com', NULL);

INSERT INTO Compte (LOGIN, mdp, email_a, email_p)
    VALUES ('Norman', 'UhXEydu1f', 'pmedcalf2@goodreads.com', NULL);

INSERT INTO Compte (LOGIN, mdp, email_a, email_p)
    VALUES ('Anatole', 'tX0cBTXBbb9W', 'csatyford1@networkadvertising.org', NULL);

INSERT INTO Compte (LOGIN, mdp, email_a, email_p)
    VALUES ('Blondelle', 'qDuAWsdEa', 'gtodaro0@bbb.org', NULL);

--------------------------------Periode_adhesion--------------------------------
INSERT INTO Periode_adhesion (numero_adhesion, date_debut, date_fin)
    VALUES (1, '2019-03-10', '2019-08-12');

INSERT INTO Periode_adhesion (numero_adhesion, date_debut, date_fin)
    VALUES (2, '2019-03-03', '2019-06-11');

INSERT INTO Periode_adhesion (numero_adhesion, date_debut, date_fin)
    VALUES (3, '2019-03-29', '2019-05-30');

INSERT INTO Periode_adhesion (numero_adhesion, date_debut, date_fin)
    VALUES (5, '2020-03-06', '2020-11-11');

INSERT INTO Periode_adhesion (numero_adhesion, date_debut, date_fin)
    VALUES (4, '2020-03-06', '2020-11-11');

INSERT INTO Periode_adhesion (numero_adhesion, date_debut, date_fin)    
VALUES (6, '2020-03-06','2020-11-11');

INSERT INTO Periode_adhesion (numero_adhesion, date_debut, date_fin)
    VALUES (7, '2020-03-06', '2020-11-11');

INSERT INTO Periode_adhesion (numero_adhesion, date_debut, date_fin)
    VALUES (8, '2020-03-06', '2020-11-11');

--------------------------------Est_valable_dans--------------------------------
INSERT INTO Est_valable_dans (numero_a, email_a)
    VALUES (1, 'cpoge4@ibm.com');

INSERT INTO Est_valable_dans (numero_a, email_a)
    VALUES (2, 'dwykey3@icq.com');

INSERT INTO Est_valable_dans (numero_a, email_a)
    VALUES (3, 'pmedcalf2@goodreads.com');

INSERT INTO Est_valable_dans (numero_a, email_a)
    VALUES (4, 'csatyford1@networkadvertising.org');

INSERT INTO Est_valable_dans (numero_a, email_a)
    VALUES (5, 'gtodaro0@bbb.org');

INSERT INTO Est_valable_dans (numero_a, email_a)
    VALUES (6, 'cfolger0@istockphoto.com');

INSERT INTO Est_valable_dans (numero_a, email_a)
    VALUES (7, 'ifinker1@hc360.com');

