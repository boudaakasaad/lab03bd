
-- Lab 3 : Exercices pratiques

-- 1. Ouvrages récents : récupérer les 3 derniers ouvrages
SELECT * FROM ouvrage ORDER BY id DESC LIMIT 3;


-- 2. Auteurs à nom long : noms contenant au moins 5 caractères
SELECT * FROM auteur WHERE CHAR_LENGTH(nom) >= 5;


-- 3. Abonnés hors domaine : exclure example.com et test.org
SELECT nom, email FROM abonne WHERE email NOT LIKE '%@example.com' AND email NOT LIKE '%@test.org';


-- 4. Emprunts en retard : rechercher les emprunts non retournés en retard
-- Note : date_fin_prevue et date_retour_effective sont absentes de notre table emprunt.
SELECT * FROM emprunt WHERE date_fin_prevue < CURDATE() AND date_retour_effective IS NULL;


-- 5. Statistiques par auteur : compter les ouvrages et les ouvrages disponibles
SELECT a.id, a.nom, COUNT(o.id) AS total_ouvrages, SUM(CASE WHEN o.disponible = TRUE THEN 1 ELSE 0 END) AS disponibles FROM auteur a JOIN ouvrage o ON a.id = o.auteur_id GROUP BY a.id, a.nom;
