-- Permet d'insérer dans la table client une nouvelle information.

insert into client (nom, prenom) values ('BRU', 'Thierry');
insert into client (numcli) values (2);



-- Création d'une table client.

create table client (
    numcli int primary key,
    nom varchar(256) default "NONIME",
    prenom varchar(46) default "Anne"
);

-- Création d'une table facture

create table facture(
    numfact int PRIMARY KEY,
    montantfact int,
    numcli int, FOREIGN KEY(numcli) REFERENCES client(numcli)
);

-- Modifier une colonne dans une table.

alter table facture modify montantfact float;

-- selection de tout ce qu'il y a dans la table facture pour l'afficher

select * from facture;

-- selection de ce qu'il y a dans la table client et facture en selectionnant le N°1 de numcli pour l'afficher

select * from client where numcli=1;
select * from facture where numcli=1;


select DISTINCT nom from client;

insert into client (nom,prenom,numcli) values ('Marti','Didier',5),('Dupont','Didier',6),('Fabbini','Lucien',7),('ROMANU','Lucien',8);

-- Permet de rechercher toute les personnes avec le nom commencent par B ou D

select * from client where nom like 'B%' or nom like 'D%';

-- Suppression d'une valeur dans la table.

delete from client where numcli=8;

-- Mise à jour/Chagement dans la table client le nom Martin pour les noms à partir de l'ID 5.

update client set nom="MARTIN" where numcli=5; 

-- Création de la table Livre.

create table Livre(
    id_livre INT auto_increment primary key,
    titre_livre varchar(42) NOT NULL,
    annee_livre INT,
    id_genre INT, FOREIGN KEY (id_genre) REFERENCES genre(id_genre)
);

-- Insertion dans la table auteur du nom, prénom et la biographie de l'auteur.

insert into auteur (nom_auteur, prenom_auteur, biographie_auteur) VALUES ('Flaubert', 'Gustave', 'écrivain romantique français');
insert into auteur (nom_auteur, prenom_auteur, biographie_auteur) VALUES ('Zola', 'émile', 'écrivain romantique français');
insert into auteur (nom_auteur, prenom_auteur, biographie_auteur) VALUES ('Camus', 'Albert', 'philosophe et écrivain français');

-- Insertion dans la table genre les différentes catégories de livre ainsi que l'ID

insert into genre (id_genre, nom_genre) VALUES (1, 'Fantasy');
insert into genre (id_genre, nom_genre) VALUES (2, 'Science Fiction');
insert into genre (id_genre, nom_genre) VALUES (3, 'Classique');
insert into genre (id_genre, nom_genre) VALUES (4, 'Politique');
insert into genre (id_genre, nom_genre) VALUES (5, 'Romantique');
insert into genre (id_genre, nom_genre) VALUES (6, 'Essaie nouvelle');


-- Insertion dans la table livre les différents livres avec le genre et l'année.

insert into Livre (titre_livre, annee_livre, id_genre) values ("L'Envers et l'Endroit", 1937, 6);
insert into Livre (titre_livre, annee_livre, id_genre) values ('Au bonheur des dames', 1882, 5);
insert into Livre (titre_livre, annee_livre, id_genre) values ('Un coeur simple', 1877, 3);
insert into Livre (titre_livre, annee_livre, id_genre) values ('Un coeur simple', 1877, 3);