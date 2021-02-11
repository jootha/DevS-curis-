# DevSecurise

Cette API de gestion de prises de rendez-vous est destiné à un personel d'une clinique vétérinaire.

Projet final de dev sécurisé par Adrien LECOMTE. Reprenant comme base le projet final de Developpement par composants.

C'est une API Rest connecté à une base de donné sur H2.
J'utilise Java Spring boot JPA, hibernate et H2.

Guide d'utilisation : <br />

Lancer les commandes :

docker network create web

docker-compose up -d

Aller sur http://localhost:80 via un navigateur. 

Le dossier DOC contiens des fichier expliquants les aspects de sécurités du projet (Surface d'attaque, objectifs de sécurité, etc...)

* Le projet contient un dossier API avec un fichier a importer dans Insomia. Il contient les appels a effectuer sur le projet.
* Le fichier insomnia se trouve dans le dossier à la racine, nommé API > Insomnia_2020-12-13.json (fichier insomnia)
* Pour s'authentifier dans l'application, utiliser l'un des comptes admins créés pour l'application (Mot de passe : root / Login : root) Ou un compte utilisateur (user/user)

****

Les Appels API sont les suivants :

Class Animal  :
 - Get : Animals -> Liste tous les animaux de la base.
 - Get AnimalsByName -> Liste les animaux contenant http://localhost:80/animals/name/{name} dans son nom.
 - POST : addAnimal -> Ajoute un animal à la base. Les Animaux ont une ID Unique. Un nouvel animal, lors de son ajout ne peut donc pas déjà exister en tant que parent d'un autre animal. On vérifie tout de même que sur l'animal qu'on ajoute, les champs ID et Parent_Id soient diférents.
 - PUT : UpdateAnimal -> Met à jour l'animal dont l'id est précisé dans : http://localhost:80/animals/{id}. On peut vérifier la modification en listant tous les animaux ou celui-ci précisément.
 - Get : AnimalById -> Affiche l'animal précisé dans http://localhost:80/animals/{id}.
 - DEL : Supprime l'animal de la base.
 
Class Doctor  :
  - GET : Doctors -> liste les docteurs
  - GET : doctorsByName -> liste les docteurs dont lastname contient {name}.
  - POST : addDoctor -> Ajoute un docteur. On peut le pas préciser son ID.
  - PUT : UpdateDoctor -> modifie un docteur.
  - GET : DoctorById -> Affiche le docteur par son Id.
  - DEL : supprime un docteur.
  

Class Rdv :
   - GET : rdvs: Liste tous les rendez-vous
   - GET : rdvsByDoctorId: Liste tous les rendez-vous du docteur selon son ID.
   - GET : rdvsByAnimalId: Liste tous les rendez-vous de l'animal selon son ID.
   - POST : Ajoute un rendez-vous.
   - PUT : Modifie le rdv -> sa date ou l'id du docteur ou de l'animal.
   - GET : rdvById -> Affiche le rdv selon son Id.
   - DEL : supprime le rendez-vous.
