/*Afficher la liste des livres, enregistrements et films disponibles en prêt
Compter tous les utilisateurs
Compter tous les utilisateurs actuels
Afficher les livres non positionnés
Utilisateur:
Somme de sanction par utilisateur
L'utilisateur se renseigne sur les enregistrements d'emprunt*/
CREATE view affiche_livres_dispo AS
    SELECT  titre
    FROM ressourcelivre JOIN exemplaire e on ressourcelivre.code_ressource = e.code_ressource JOIN information i on ressourcelivre.code_ressource = i.code_ressource LEFT join emprunt e2 on e.code_exemplaire = e2.code and e.code_ressource = e2.code_ressource
    WHERE e2.code_ressource IS NULL AND e.etat IN ('neuf', 'bon') ;


CREATE view affiche_enregistrement_dispo AS
    SELECT  titre
    FROM ressourceenregistrement JOIN exemplaire e on ressourceenregistrement.code_ressource = e.code_ressource JOIN information i on ressourceenregistrement.code_ressource = i.code_ressource LEFT join emprunt e2 on e.code_exemplaire = e2.code and e.code_ressource = e2.code_ressource
    WHERE e2.code_ressource IS NULL AND e.etat IN ('neuf', 'bon') ;


CREATE view affiche_film_dispo AS
    SELECT  titre
    FROM ressourcefilm JOIN exemplaire e on ressourcefilm.code_ressource = e.code_ressource JOIN information i on ressourcefilm.code_ressource = i.code_ressource LEFT join emprunt e2 on e.code_exemplaire = e2.code and e.code_ressource = e2.code_ressource
    WHERE e2.code_ressource IS NULL AND e.etat IN ('neuf', 'bon') ;
    
CREATE view nb_utilisateurs_total AS
    SELECT COUNT(*)
    FROM compte;

CREATE view nb_utilisateurs_actuel AS
    SELECT COUNT(login)
    FROM compte JOIN est_valable_dans evd on compte.email_a = evd.email_a JOIN periode_adhesion pa on evd.numero_a = pa.numero_adhesion
    WHERE (date_fin is NULL OR date_fin > current_date);

CREATE view livre_nonpositionne AS
    SELECT  code_exemplaire, titre
    FROM ressourcelivre JOIN exemplaire e on ressourcelivre.code_ressource = e.code_ressource JOIN information i on ressourcelivre.code_ressource = i.code_ressource
    WHERE  code_classification is NULL;


CREATE view nb_adherents_total AS
    SELECT DISTINCT COUNT(*)
    FROM compte
    WHERE email_p is null;

CREATE view nb_sanction_utilisateurs AS
    SELECT adherent.email, Count(sanction.email)
    FROM adherent, sanction
    WHERE adherent.email = sanction.email
    GROUP BY adherent.email;

CREATE view somme_sanction_utilisateurs AS
    SELECT adherent.email, Count(sanction.email),sum(frais)
    FROM adherent, sanction
    WHERE adherent.email = sanction.email AND t='remboursement'
    GROUP BY adherent.email,frais;
    
--- ICI on obtient la ressource la plus emprunte par l'intermédiaire de 2 vues.

CREATE VIEW compte_emprunts AS
    SELECT MAX(mt.nb_emprunts) as max, code_ressource
    from (SELECT COUNT(e.code_ressource) as nb_emprunts, code_ressource
        FROM emprunt e group by code_ressource) as mt
    group by code_ressource;

CREATE VIEW ressource_populaire AS
   SELECT  code_ressource
    FROM compte_emprunts
    where max = (SELECT MAX(max) from compte_emprunts as q)
    ;




