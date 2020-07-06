# Note de clarification 

## Objectifs du document

Il s'agit ici de réaliser un systeme de gestion pour une bibliothèque municipale qui cherche à informatiser ses activités. Après avoir rappelé les livrables attendus pour ce projet et les besoins établis dans le cahier des charges, nous listerons les objets qui seront gérés dans notre base de données,  avec leurs propriétés et leurs contraintes. Nous listerons ensuite les utilisateurs qui pourront interagir avec cette base de données puis nous établirons les fonctions utilisables par ces derniers.

### Livrables attendus

README

Note de clarification ici déclarée au format markdown

Modele conceptuel de donnée (MCD) au format plantuml

Modele logique de donnée (MLD) relationnel au format plain text

BDD : tables et vues, données de test, questions attendues (vues)

Application Python

### Rappel des besoins établis dans le cahier des charges

* Faciliter aux adhérents la recherche de documents et la gestion de leurs emprunts.
* Faciliter la gestion des ressources documentaires : ajouter des documents, modifier leur description, ajouter des exemplaires d'un document, etc.
* Faciliter au personnel la gestion des prêts, des retards et des réservation.
* Faciliter la gestion des utilisateurs et de leurs données.
* Établir des statistiques sur les documents empruntés par les adhérents, cela permettra par exemple d'établir la liste des documents populaires, mais aussi d'étudier le profil des adhérents pour pouvoir leur suggérer des documents.



## Historique

version 1 - 29/03/2020

version 2 - 31/03/2020 : modifications sur la classe Exemplaire et la classe Emprunt, suppression de la classe Reservation en l'ajoutant dans la classe Emprunt.

version 3 - 01/04/2020 : modifications sur la nullité des attributs (date_Apparition, editeur...)

version 4 - 04/04/2020 : ajoute d'un attribut "payee" pour la classe Sanction.



## Description des Objets, de leurs propriétés et des contraintes associées

### Ressources
Cette base de données contiendra des **ressources** qui seront caractérisées par une *code* unique, un *titre*, une *date d'apparition*,  un *éditeur*, un *genre* et un *code_classification*.
Ces **ressouces** se diviseront en trois catégories : les **livres**, les **films** et les **enregistrements musicaux**. Un **livre** possèdera un *ISBN*, un *résumé* et une *langue*. Un **film** possèdera une *langue*, une *longueur* et un *synopsis*.  Un **enregistrement musical** possèdera une *longueur*. Les **ressources** sont composées **d'exemplaires** qui ont un *code_exemplaire* et un *état* de type "neuf", "bon", "abîmé" ou "perdu". 

#### Ressources


| Attributs | Contraintes |
| -------- | -------- |
| code     | unique, not null |
| titre    | not null    |
| date_Apparition   | not null |
| editeur    | not null |
| genre    |  not null  |
| etat    | not null |
| code_Classification   |  unique |

* **Le code** doit etre unique et non nul car il doit permettre d'identifier chaque ressource. 
* **Le code de classification** est unique, car un emplacement ne peut contenir qu'une ressource à la fois.
* chaque ressource a forcément un **état** et un **titre** ces attributs sont donc uniques. La **date d'apparition** et **l'editeur** ne peuvent pas etre inconnu, parce qu'ils nous permettent de identifier les informations de ressources. 


#### Livre (fille de Ressources)


| Attributs | Contraintes |
| -------- | -------- |
| ISBN     | unique, Not null  |
| resume    |     |
| langue    |     |


* Pour des raisons d'identification, l'isbn est unique ne peut pas etre nul. 
#### Film (fille de Ressources)

| Attributs | Contraintes |
| -------- | -------- |
| longueur     |   |
| synopsis   |     |

#### Enregistrement musical (fille de Ressources)

| Attributs | Contraintes |
| -------- | -------- |
| longueur     |   |



### Contributeurs

Les contributeurs des **ressources**  seront caractérisés par   un *nom*, un *prenom*, une *date_de_naissance* et une *nationalité*. Ces **contributeurs** se diviseront en cinq catégories : **auteur**, **compositeur**, **interprète**, **réalisateur** et **acteur**.

#### Contributeurs 
| Attributs | Contraintes |
| -------- | -------- |
| nom | Not null|
|prénom | Not null|
|date_naissance ||
|nationalite||

 * le nom et le prenom du contributeur doivent etre connus, sa date de naissance (pour des auteurs tres anciens ou hypothetiques) ainsi que la nationalite peuvent ne pas etre renseignés.

 



### Personnes

On représentera aussi des **personnes** ayant un *login*, un *mot de passe*, un *nom*, un *prenom*, une *adresse* et un *email*. Ces **personnes** se diviseront en deux catégories : les **adhérents** et le **personnel**.




#### Personne
| Attributs | Contraintes |
| -------- | -------- |
| login | unique, not null |
| mdp| not null |
| nom | not null |
|prenom | not null |
|adresse|  |
|email|unique, not null|

 

#### Adhérent 

Les **adhérents** auront les attributs supplémentaires suivant : un *numéro de tél*, une *date_naissance*, une *date_début*, une *date_fin*. On ajoute également les attributs nombre_emprunts, sanctionné de type booléen et blacklisté de type booléen ce qui nous permettra de savoir si l’utilisateur peut emprunter ou non. 


| Attributs | Contraintes |
| -------- | -------- |
|num_tel||
|date_naissance ||
|date_debut| not null |
|date_fin||
|Sanctionné |  |
|Blackliste| |



#### Personnel 

Tous les attributs de la classe Personnel seront factorisés au niveau de Personne. 




### Sanction

Les adhérents doivent retourner les ressources qui ont été empruntés avant la date limite de retour et dans le même état que lorsque emprunté. Dans le cas contraire il sera sanctionné. 

| Attributs | Contraintes |
| -------- | -------- |
|date_sanction|not null |
|retard||
|frais||
|etat_retour||
|payee||




### Emprunt 

Des **adhérents** peuvent emprunter des **ressources** (documents). Chaque prêt est caractérisé par la date d'emprunt *date_debut* et une *durée_prêt* (limité). Il y a des contraintes sur le prêt. Le nombre de documents empruntés simultanément par une personne est limitée. Un document ne peut être emprunté que s'il est disponible et en bon état. On le gérera dans une vue. Si la date de début est suprérieur à celle d'aujourd'hui, ça veut dire que c'est une réservation.

#### Emprunt 
| Attributs | Contraintes |
| -------- | -------- |
| date_début|not null|
| duree_pret | not null |
| date_fin_réel||


* un emprunt a forcement une date de debut mais pas forcement de fin (perte de la ressource par exemple)




## Méthodes à concevoir
### Méthodes générales
Nous devrons pouvoir ***rechercher***, ***ajouter***, ***mettre à jour***, ***supprimer*** des données concernant le **Personnel**, les **Adhérents**, les **Ressources** et les **Contributeurs**.
Sauf la méthode *rechercher* concernant l'objet **Ressource** et l'objet **Contributeurs**, les adhérents ne doivent pas avoir accès aux méthodes. On doit restreindre l'accès à ces fonctions au personnel seulement. 

### Méthodes spécifiques
#### Gestion des utilisateurs et de leurs données
##### Authentification de l'utilisateur
* login

Elle permet à l'utilisateur de se connecter.
* logout

Elle permet à l'utilisateur de se déconnecter.
* résilier

Elle permet à l'utilisateur de résilier son abonnement à la bibliotheque




#### Gestion des ressources documentaires
* ajouterDocument

Elle permet d'ajouter une nouvelle ressource.
* modifierDescription

Nous pouvons modifier la description de la ressource spécifiée.
* ajouterExemplaire

Elle permet d'ajouter une nouvel exemplaire.

### Côté adhérent
#### Recherche de documents
* recherche

Elle permet à l'utilisateur de rechercher une ressource.

#### Gestion des emprunts
* retournerRessource

Elle permet à l'utilisateur de retourner un/des document(s).
* regarderEmprunts

Elle permet d'afficher l'ensemble des emprunts.

#### Gestion des sanctions
* payerSaction

Elle permet à l'utilisateur de régler les frais qu'il doit à la bibliotheque


### Côté personnel
#### Gestion des prêts
* supprimerPrêt

Si nécessaire, l'administrateur a le droit de supprimer un prêt.
* regarderPrêts

Elle permet d'afficher tous des prêts qui sont étés éffectués.

#### Gestion des retards
* regarderRetards

Elle permet d'afficher l'ensemble des retards


#### Gestion des réservation
* regarderReservations

Elle permet à l'administateur d'afficher l'ensemble des réservations.

#### Gestion des sanctions
* ajouterBlacklist

Le personnel peut catégoriser un adhérent comme nuisible pour la bibliotheque et l'empecher ainsi d'emprunter à nouveau




#### Établir des statistiques sur les documents empruntés

* nombreEmprunte

Nous devons aussi pouvoir calculer quelques chiffres relatifs aux données pour l'administration telles que le nombre des documents empruntés par les adhérents.

* ressourcesPopulaires

Nous pouvons compter le nombre de fois qu'une a été empruntée afin d'établir une liste de ressources populaires
