/* la vue ne doit comporter aucun element ! */



CREATE VIEW VRemboursement AS
    SELECT email AS Adhérent, code AS Code_exemplaire, code_ressource AS Code_ressource,date_sanction,etat_retour,frais,effectue FROM Sanction
    WHERE t = 'remboursement';

CREATE VIEW Vretard AS
    SELECT email AS Adhérent, code AS Code_exemplaire, code_ressource AS Code_ressource,date_sanction,jours_retard,effectue FROM Sanction
    WHERE t = 'retard';

CREATE view ProjVremboursement AS
    SELECT email, code
    FROM sanction
    WHERE t = 'remboursement';

CREATE view ProjVretard AS
    SELECT email, code
    FROM sanction
    WHERE t = 'retard';


/* PROJECTION(Propose,code_ressource) = PROJECTION(Ressource, code) */

CREATE VIEW VRessourceSansAdherentPropose AS
    SELECT code FROM Ressource
    EXCEPT
    SELECT code_ressource FROM Propose;

/* * PROJECTION(Personnel,email) = PROJECTION(Compte, email_p) AND PROJECTION(Adherent,email) = PROJECTION(Compte, email_a) */

CREATE VIEW VPersonnelSansCompte AS
    SELECT email FROM Personnel
    EXCEPT
    SELECT email_p FROM Compte ;

CREATE VIEW VAdherentSansCompte AS
    SELECT email FROM Adherent
    EXCEPT
    SELECT email_a FROM Compte;

/* * PROJECTION(Adherent, email) = PROJECTION(Est_valable,email_a) AND PROJECTION(Periode_adhesion,numero_adhesioin) = PROJECTION(Est_valable_dans, numero_a) */

CREATE VIEW VAdherentSansPeriode AS
    SELECT email FROM Adherent
    EXCEPT
    SELECT email_a FROM Est_valable_dans ;

CREATE VIEW VPeriodeSansAdherent AS
    SELECT numero_adhesion FROM Periode_adhesion
    EXCEPT
    SELECT numero_a FROM Est_valable_dans;


/*
PROJECTION(Ecrire,code)=PROJECTION(RessourceLivre, code_ressource)
PROJECTION(Composer,code)=PROJECTION(RessourceEnregistrement, code_ressource)
PROJECTION(Interpreter,code)=PROJECTION(RessourceEnregistrement, code_ressource)
PROJECTION(Realiser,code)=PROJECTION(RessourceFilm, code_ressource)*/
CREATE VIEW VLivreSansAuteur AS
    SELECT code_ressource FROM RessourceLivre
    EXCEPT
    SELECT code FROM Ecrire;

CREATE VIEW VEnregistrementSansCompositeur AS
    SELECT code_ressource FROM RessourceEnregistrement
    EXCEPT
    SELECT code FROM Composer;

CREATE VIEW VEnregistrementSansInterprete AS
    SELECT code_ressource FROM RessourceEnregistrement
    EXCEPT
    SELECT code FROM Interpreter;


CREATE VIEW VFilmSansRealisateur AS
    SELECT code_ressource FROM RessourceFilm
    EXCEPT
    SELECT code FROM Realiser;

/*Contrainte : INTERSECTION( (PROJECTION(RessourceLivre,code_ressource), PROJECTION(RessourceFilm,code_ressource))= {}
AND INTERSECTION( (PROJECTION(RessourceLivre,code_ressource), PROJECTION(RessourceEnregistrement,code_ressource))) ={}
AND  INTERSECTION( (PROJECTION(RessourceFilm,code_ressource), PROJECTION(RessourceEnregistrement,code_ressource))) ={}
Contraintes : UNION(UNION(PROJECTION(RessourceFilm, code_ressource),PROJECTION(RessourceEnregistrement, code_ressource)),PROJECTION(RessourceLivre, code_ressource))=PROJECTION(Ressource, code)
*/

CREATE VIEW  VLivreExclutFilm AS
    SELECT code_ressource FROM RessourceLivre
    INTERSECT 
    SELECT code_ressource FROM RessourceFilm;

CREATE VIEW  VLivreExclutEnre AS
    SELECT code_ressource FROM RessourceLivre
    INTERSECT 
    SELECT code_ressource FROM RessourceEnregistrement;

CREATE VIEW  VEnreExclutFilm AS
    SELECT code_ressource FROM RessourceEnregistrement
    INTERSECT 
    SELECT code_ressource FROM RessourceFilm;


CREATE VIEW VLivreFilmEnregis AS
    SELECT code_ressource FROM RessourceFilm
    UNION 
    SELECT code_ressource FROM RessourceEnregistrement
    UNION
    SELECT code_ressource FROM RessourceLivre ;

CREATE VIEW VRessourceUnionFilles AS
    SELECT code FROM Ressource
    EXCEPT
    SELECT code_ressource FROM VLivreFilmEnregis;
