/*
MySQL est un système de gestion de données relationnelles populaires utilisées pour stocker et récupérer des données. La gestion des utilisateurs dans MySQL est cruciale pour garantir et limiter l'accès aux données sensibles.

Structure des utilisateurs
Chaquej utilisateur est identifié par un nom (username) et associé à un hôte (host) depuis lequel il peut se connecter. La combinaison de l'utilisateur et de l'hôte est unique.ADD .

--- Gestion des utilisateurs ---

    1. Création des utilisateurs
*/
create user 'nomUtilisateur'@'hote' IDENTIFIED BY 'motdepasse';

/*
    2. Modifier
*/
alter use 'anissa'@'localhost' IDENTIFIED BY 'newmotdepasse';

/*
    3. Renommer (rename)
*/
rename user 'anissa'@'localhost' to 'anissa2'@'localhost';

/*
    4. Supprimer
*/
drop user 'anissa2'@'hote';

/*
    5. Voir les utilisateurs créés ou présents
*/
select user from mysql.user;

/*
    2. Voir l'utilisateur courant
*/
select current_user;

/*
--- Gestion des privilèges ---

Les privilèges déterminent ce que chaque utilisateur est autorisé à faire. Les privilèges incluent les clauses : INSERT, UPDATE, DELETE, etc. La commande GRANT est utilisé pour accorder des privilèges.
*/
Grant all on bdd.* to 'user'@'hote';    /* hote = localhost */

/*
    Révoquerles droits
*/
revoke privilege on bd from 'user'@'hote';
