USE bibliotheque;
SELECT DATABASE();
SELECT * FROM auteur;
SELECT COUNT(*) FROM auteur;
SELECT nom, email FROM abonne;
SELECT nom AS NomAbonne, email AS Courriel FROM abonne;
SELECT titre, disponible FROM ouvrage WHERE disponible = TRUE;
SELECT * FROM emprunt WHERE date_debut > '2025-06-01';
SELECT titre FROM ouvrage WHERE disponible = TRUE ORDER BY titre ASC;

SELECT titre, disponible
FROM ouvrage
WHERE disponible = 1;

SELECT titre, isbn
FROM ouvrage
WHERE isbn <> '1234567890123';

SELECT titre, id
FROM ouvrage
WHERE id > 3;
SELECT titre FROM ouvrage WHERE disponible = FALSE AND auteur_id = 3;

SELECT nom FROM abonne WHERE email LIKE '%@gmail.com' OR email LIKE '%@yahoo.fr';
SELECT nom FROM auteur WHERE NOT (nom LIKE 'A%');
SELECT nom FROM auteur WHERE nom LIKE 'M%';
SELECT email FROM abonne WHERE email LIKE '%@example.com';
SELECT titre FROM ouvrage WHERE titre LIKE '%Science%';
SELECT nom FROM auteur WHERE BINARY nom LIKE 'Dup%';
SELECT nom FROM abonne WHERE id IN (1, 3, 5, 7);
SELECT nom FROM abonne WHERE id NOT IN (2, 4, 6);
SELECT * FROM emprunt WHERE date_debut BETWEEN '2025-05-01' AND '2025-05-31';
SELECT * FROM emprunt WHERE date_debut NOT BETWEEN '2025-01-01' AND '2025-12-31';
SELECT * FROM emprunt WHERE date_fin IS NULL;
SELECT * FROM emprunt WHERE date_fin IS NOT NULL;
SELECT titre FROM ouvrage WHERE disponible = FALSE AND date_retour_prevue IS NULL;
SELECT nom, prenom FROM auteur ORDER BY nom ASC, prenom ASC;
SELECT * FROM abonne ORDER BY id ASC LIMIT 10 OFFSET 20;
SELECT COUNT(*) AS nb_disponibles FROM ouvrage WHERE disponible = TRUE;
SELECT auteur_id, COUNT(*) AS nb_ouvrages FROM ouvrage GROUP BY auteur_id HAVING nb_ouvrages > 5;
SELECT * FROM ouvrage ORDER BY id DESC LIMIT 3;SELECT * FROM ouvrage ORDER BY id DESC LIMIT 3;
SELECT nom, email FROM abonne WHERE email NOT LIKE '%@example.com' AND email NOT LIKE '%@test.org';
SELECT a.id, a.nom, COUNT(o.id) AS total_ouvrages, SUM(CASE WHEN o.disponible = TRUE THEN 1 ELSE 0 END) AS disponibles FROM auteur a JOIN ouvrage o ON a.id = o.auteur_id GROUP BY a.id, a.nom;