--------------------------- verification des contraintes d'integrite --------------------------- 
DO $do$
BEGIN
    IF (SELECT COUNT(*) FROM
        (SELECT
            *
        FROM
            ProjVremboursement
        INTERSECT
        SELECT
            *
        FROM
            ProjVretard) as intersection) != 0 THEN
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
    END IF;
    IF (
        SELECT
            COUNT(*)
        FROM
            VRessourceSansAdherentPropose) != 0
        THEN
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
    END IF;
    IF (
        SELECT
            count(*)
        FROM
            VPersonnelSansCompte) !=0
        THEN
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
    END IF;
    IF (
        SELECT
            count(*)
        FROM
            VAdherentSansCompte) != 0
        THEN
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
    END IF;
    IF (
        SELECT
            count(*)
        FROM
            VAdherentSansPeriode) !=0 
        THEN
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
    END IF;
    IF (
        SELECT
            count(*)
        FROM
            VPeriodeSansAdherent) !=0
            THEN
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
    END IF;
    IF (
        SELECT
            count(*)
        FROM
            VLivreSansAuteur) !=0
        THEN
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
    END IF;
    IF (
        SELECT
            count(*)
        FROM
            VEnregistrementSansCompositeur) !=0
        THEN
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
    END IF;
    IF (
        SELECT
            count(*)
        FROM
            VEnregistrementSansInterprete) !=0
        THEN
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
    END IF;
    IF (
        SELECT
            count(*)
        FROM
            VFilmSansRealisateur) !=0
        THEN
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
    END IF;
    IF (
        SELECT
            count(*)
        FROM
            VLivreExclutFilm) !=0
        THEN
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
    END IF;
    IF (
        SELECT
            count(*)
        FROM
            VLivreExclutEnre) !=0
        THEN
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
    END IF;
    IF (
        SELECT
            count(*)
        FROM
            VEnreExclutFilm) != 0
        THEN
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
    END IF;
    IF (
        SELECT
            count(*)
        FROM
            VRessourceUnionFilles) != 0
        THEN
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
    END IF;
   

END
$do$
