Les objectifs de sécurité :

Intégrité : 2/5 -> Si les informations contenus dans notre API ne sont pas corrects, le plus grave est que les rendez-vous ne se feront pas dans le bonne ordre. L'impact sur l'activité sera éxistant mais moindre. En effet, il sera toujours possible de joindre les clients par un autre moyen ou de déplacer des rendez-vous. Nous ne stoquons pas de données sensibles comme des données médicales. Mais seulement des noms et coordonnées.

Disponibilité : 2/5 -> En cas de non accès au service, l'organisation de la clinique serait perturbé mais non interrompus. On pourra revenir aux méthodes plus classique du téléphone et du cahier de manière temporaire pour la gestion des RDV.

Confidentialité : 4/5 -> Les données a caractères personnels sont stoqué mais se sont des données peut sensibles comme des adress ou moyens de contact. il faut néanmoins respecter les règnes RGPD et de la CNIL.


Authentification :
 - Description : 
L'API ayant pour but d'être utiliser en interne dans la clinique,Il existe des utilisateurs Root et admin. La simple authentification suffit pour la consultations des 3 entités, créer et modifier des rdvs modifier et créer et modifier des animaux.
Il est cependant nécéssaire d'être root pour modifier les informations des docteurs.

 - De quoi cela protège ? :
 Les secrétaires peuvent faire leur travail d'admissions et de gestion de rdv (disponibilité) et peuvent modifier les erreurs (Intégrité) sans que y ai des fuites sur les données personnelles (Confidentilité)

 - Mécanisme : Authentification, Permissions.
 - Principe de sécu : Cette partit répond au principe de moindre privilège (de base, un utilisateur qui n'a pas de login n'a accés à rien), au pricipe de moindre confiance (car un visiteur externe n'a aucuns accés). 
 
 - Comment tester ?
 Pour tester l'authentification, on peut ouvrir http://localhost:80/ via un navigateur ou exécuter les requètes stoqués dans le dossier API via Insomia, sans précisé de méthode d'authentification

 - Les donnés a caractère personels pouraient fuiter. Un utilisateur malveillant pourrait suprimer ou corrompres les données .
 
 Protection injection SQL : 
 - Lors de l'authentification, il n'est pas possible de faire une injection SQL en renseignant des morceaux de requete SQL a la place des login/mdp.
 
 - Cela protège d'utilisateurs non habiliter a contourner la connexion, ou pire encore, qu'ils puissent faire les requetes qu'il désirent sur la base (supression, injection ou modification de données)

 - Mécanisme : Validation de données.
 
 - principe de sécurité : Configuration par défaut sécurisé
 
 - Comment tester ?
 entrer en login : root';-- et un mot de passe.
la connection est reffusée.

 - Risque : suppression ou altération des données dans la base. Accés au données pas un utilisateur externe.
 