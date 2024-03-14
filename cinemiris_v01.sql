CREATE TABLE personne ( 
    idPersonne INTEGER, 
    nom TEXT NOT NULL, 
    prenom TEXT NOT NULL, 
    CONSTRAINT pkPersonne PRIMARY KEY (idPersonne) 
); 

CREATE TABLE film ( 
    idFilm INTEGER, 
    idRealisateur INTEGER, 
    titre TEXT, 
    genre TEXT, 
    annee INTEGER, 
    CONSTRAINT pkFilm PRIMARY KEY (idFilm), 
    CONSTRAINT fkRealisateur FOREIGN KEY (idRealisateur) REFERENCES personne (idPersonne) 
); 

CREATE TABLE jouer ( 
    idActeur INTEGER, 
    idFilm INTEGER, 
    role TEXT, 
    CONSTRAINT pkActeurFilm PRIMARY KEY (idActeur, idFilm), 
    CONSTRAINT fkActeur FOREIGN KEY (idActeur) REFERENCES personne (idPersonne), 
    CONSTRAINT fkFilm FOREIGN KEY (idFilm) REFERENCES film (idFilm) 
); 

CREATE TABLE cinema ( 
    idCinema INTEGER, 
    nom TEXT, 
    adresse TEXT, 
    CONSTRAINT pkCinema PRIMARY KEY (idCinema) 
); 

CREATE TABLE projection ( 
    idCinema INTEGER, 
    idFilm INTEGER, 
    jour TEXT, 
    CONSTRAINT pkCinemaFilmJour PRIMARY KEY (idCinema, idFilm, jour), 
    CONSTRAINT fkCinéma FOREIGN KEY (idCinema) REFERENCES cinema (idCinema), 
    CONSTRAINT fkFilm2 FOREIGN KEY (idFilm) REFERENCES film (idFilm) 
);

-- La table cinema
INSERT INTO cinema VALUES (1, 'Mega CGR', 'Place de la Brèche, 79000 Niort');
INSERT INTO cinema VALUES (2, 'CGR Dragon', '8 Cours des Dames, 17000 Rochelle');
INSERT INTO cinema VALUES (3, 'CGR Le Castille', '24 Place du Maréchal Philippe Leclerc, 86000 Poitiers');


-- La table personne
INSERT INTO personne VALUES (1, 'Ritchie', 'Guy');
INSERT INTO personne VALUES (2, 'Moran', 'Nick');
INSERT INTO personne VALUES (3, 'Mackintosh', 'Steven');
INSERT INTO personne VALUES (4, 'Statham', 'Jason');
INSERT INTO personne VALUES (5, 'Jones', 'Vinnie');

INSERT INTO personne VALUES (6, 'Darabont', 'Frank');
INSERT INTO personne VALUES (7, 'Robbins', 'Tim');
INSERT INTO personne VALUES (8, 'Frimane', 'Morgan');

INSERT INTO personne VALUES (9, 'Fincher', 'David');
INSERT INTO personne VALUES (10, 'Pitt', 'Brad');
INSERT INTO personne VALUES (11, 'Paltrow', 'Gwyneth');
INSERT INTO personne VALUES (12, 'Spacey', 'Kevin');

INSERT INTO personne VALUES (13, 'Singer', 'Bryan');
INSERT INTO personne VALUES (14, 'Byrne', 'Gabriel');
INSERT INTO personne VALUES (15, 'Pollak', 'Kevin');
INSERT INTO personne VALUES (16, 'Del Toro', 'Benicio');

INSERT INTO personne VALUES (17, 'Soderbergh', 'Steven');
INSERT INTO personne VALUES (18, 'Clooney', 'George');
INSERT INTO personne VALUES (19, 'Garcia', 'Andy');

INSERT INTO personne VALUES (20, 'Nolan', 'Christopher');
INSERT INTO personne VALUES (21, 'DiCaprio', 'Leonardo');
INSERT INTO personne VALUES (22, 'Cotillard', 'Marion');

INSERT INTO personne VALUES (23, 'Gilliam', 'Terry');
INSERT INTO personne VALUES (24, 'Willis', 'Bruce');
INSERT INTO personne VALUES (25, 'Stowe', 'Madeleine');

INSERT INTO personne VALUES (26, 'Eastwood', 'Clint');
INSERT INTO personne VALUES (27, 'Penn', 'Sean');
INSERT INTO personne VALUES (28, 'Bacon', 'Kévin');

INSERT INTO personne VALUES (29, 'Norton', 'Edward');

INSERT INTO personne VALUES (30, 'Hirsch', 'Emile');
  

-- La table film
INSERT INTO film VALUES (1, 1, 'Arnaques, crimes et botanique', 'Comédie', 1998);
INSERT INTO film VALUES (2, 6, 'Les évadés', 'Drame', 1994);
INSERT INTO film VALUES (3, 9, 'Seven', 'Policier', 1895);
INSERT INTO film VALUES (4, 13, 'Usual Suspects', 'Thriller', 1995);
INSERT INTO film VALUES (5, 17, 'Ocean''s eleven', 'Comédie policière', 2001);
INSERT INTO film VALUES (6, 20, 'Inception', 'Action', 2010);
INSERT INTO film VALUES (7, 23, 'L''armée des 12 singes', 'Science-fiction', 1995);
INSERT INTO film VALUES (8, 26, 'Mystic River', 'Drame', 2003);
INSERT INTO film VALUES (9, 9, 'Fight Club', 'Drame', 1999);
INSERT INTO film VALUES (10, 27, 'Into the Wild', 'Aventure', 2008);


-- La table jouer
INSERT INTO jouer VALUES (2, 1, 'Eddy');
INSERT INTO jouer VALUES (3, 1, 'Winston');
INSERT INTO jouer VALUES (4, 1, 'Bacon');
INSERT INTO jouer VALUES (5, 1, 'Big Chris');

INSERT INTO jouer VALUES (7, 2, 'Andy Dufresne');
INSERT INTO jouer VALUES (8, 2, 'Ellis Boyd Redding');

INSERT INTO jouer VALUES (10, 3, 'David Mills');
INSERT INTO jouer VALUES (8, 3, 'William Somerset');
INSERT INTO jouer VALUES (11, 3, 'Tracy Mills');
INSERT INTO jouer VALUES (12, 3, 'John Doe');

INSERT INTO jouer VALUES (14, 4, 'Dean Keaton');
INSERT INTO jouer VALUES (15, 4, 'Todd Hockney');
INSERT INTO jouer VALUES (12, 4, 'Roger Kint');
INSERT INTO jouer VALUES (16, 4, 'Fred Fenster');

INSERT INTO jouer VALUES (18, 5, 'Danny Ocean');
INSERT INTO jouer VALUES (10, 5, 'Rusty Ryan');
INSERT INTO jouer VALUES (19, 5, 'Terry Benedict');

INSERT INTO jouer VALUES (21, 6, 'Kobe');
INSERT INTO jouer VALUES (22, 6, 'Mal');

INSERT INTO jouer VALUES (24, 7, 'James Cole');
INSERT INTO jouer VALUES (10, 7, 'Jeffrey Goines');
INSERT INTO jouer VALUES (25, 7, 'Kathryn Railly');

INSERT INTO jouer VALUES (27, 8, 'Jimmy Markum');
INSERT INTO jouer VALUES (7, 8, 'Dave Boyle');
INSERT INTO jouer VALUES (28, 8, 'Sean Devine');

INSERT INTO jouer VALUES (29, 9, 'The Narrator');
INSERT INTO jouer VALUES (10, 9, 'Tyler Durden');

INSERT INTO jouer VALUES (30, 10, 'Chris McCandless');


-- La table projection
INSERT INTO projection VALUES (1, 2, '2012/12/01');
INSERT INTO projection VALUES (1, 5, '2012/12/04');
INSERT INTO projection VALUES (1, 6, '2012/12/05');
INSERT INTO projection VALUES (1, 7, '2012/12/07');

INSERT INTO projection VALUES (2, 1, '2012/12/02');
INSERT INTO projection VALUES (2, 4, '2012/12/04');
INSERT INTO projection VALUES (2, 3, '2012/12/06');
INSERT INTO projection VALUES (2, 7, '2012/12/08');

INSERT INTO projection VALUES (3, 3, '2012/12/03');
INSERT INTO projection VALUES (3, 1, '2012/12/04');
INSERT INTO projection VALUES (3, 2, '2012/12/05');
INSERT INTO projection VALUES (3, 5, '2012/12/06');