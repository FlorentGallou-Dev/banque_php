#BASE DE DONNÉE BANQUE GRINGOTTS VERSION PHP
-----
> Création entièrement en SQL de la future base de donnée qui sera utilisée pour l'évolution V2 de notre projet Banque en PHP/MySQL.
> La base donnnée sera créée par la rédaction du fichier qui une fois importé dans phpMyAdmin crééra la base de donnée en vérifiant la présence d'une même base de donnée,
> supprimera l'ancienne pour recéer une nouvelle avec un accès utilisateur puis les tables correspondant aux besoin du projet.
> Des entrées pour chaque tables seront alors réalisées depuis ce même fichier afin de mettre en pratique les bases du SQL.
-----
## VERSIONS
-----
> 1. Création du projet sous Git, création du fichier de la base "banque_php.sql", création et écriture du fichier README.md, premier commit et push sur GitHub,
> 2. Création de la condition de création de la base de donnée si déjà existante supprimer et recréer,
> 3. Création de la table User, création de la ligne utilisateur Rubeus Hagrid,
> 4. Création de la table Account avec clé étrangère venant de User, remplissage de trois comptes différents,
> 5. Création de la table Movement avec la clé étrangère venant de Account, remplissage de plusieurs lignes de mouvements par compte,
> 6. Création de la gestion de l'utilisateur de la base de donnée.