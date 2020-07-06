---------------------------TABLES---------------------------
SELECT
    *
FROM
    Personnel;

SELECT
    *
FROM
    Adherent;

SELECT
    *
FROM
    Ressource;

SELECT
    *
FROM
    Information;

SELECT
    *
FROM
    Exemplaire;

SELECT
    *
FROM
    Emprunt;

SELECT
    *
FROM
    ressourceenregistrement;

SELECT
    *
FROM
    ressourcefilm;

SELECT
    *
FROM
    ressourcelivre;

SELECT
    *
FROM
    acteur;

SELECT
    *
FROM
    realisateur;

SELECT
    *
FROM
    compositeur;

SELECT
    *
FROM
    interprete;

SELECT
    *
FROM
    jouer;

SELECT
    *
FROM
    realiser;

SELECT
    *
FROM
    interpreter;

SELECT
    *
FROM
    composer;

SELECT
    *
FROM
    emprunt;

SELECT
    *
FROM
    sanction;

SELECT
    *
FROM
    propose;

SELECT
    *
FROM
    ecrire;

SELECT
    *
FROM
    auteur;

SELECT
    *
FROM
    est_valable_dans;

SELECT
    *
FROM
    periode_adhesion;

---------------------------VIEWS---------------------------
----VIEWS_CONTRAINTES----

SELECT
    *
FROM
    VRemboursement;

SELECT
    *
FROM
    Vretard;

SELECT
    *
FROM
    ProjVremboursement;

SELECT
    *
FROM
    ProjVretard;

SELECT
    *
FROM
    VRessourceSansAdherentPropose;

SELECT
    *
FROM
    VPersonnelSansCompte;

SELECT
    *
FROM
    VAdherentSansCompte;

SELECT
    *
FROM
    VAdherentSansPeriode;

SELECT
    *
FROM
    VPeriodeSansAdherent;

SELECT
    *
FROM
    VLivreSansAuteur;

SELECT
    *
FROM
    VEnregistrementSansCompositeur;

SELECT
    *
FROM
    VEnregistrementSansInterprete;

SELECT
    *
FROM
    VFilmSansRealisateur;

SELECT
    *
FROM
    VLivreExclutFilm;

SELECT
    *
FROM
    VLivreExclutEnre;

SELECT
    *
FROM
    VEnreExclutFilm;

SELECT
    *
FROM
    VLivreFilmEnregis;

SELECT
    *
FROM
    VRessourceUnionFilles;

----VIEWS_METHODES----
SELECT
    *
FROM
    affiche_livres_dispo;

SELECT
    *
FROM
    affiche_enregistrement_dispo;

SELECT
    *
FROM
    affiche_film_dispo;

SELECT
    *
FROM
    nb_adherents_total;

SELECT
    *
FROM
    nb_utilisateurs_actuel;

SELECT
    *
FROM
    livre_nonpositionne;

SELECT
    *
FROM
    nb_sanction_utilisateurs;

SELECT
   *
FROM
somme_sanction_utilisateurs ; 

SELECT
   *
FROM
ressource_populaire;
    

