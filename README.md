# lab03bd
Connexion à MySQL

Dans cette première étape, j'ai établi une connexion au serveur MySQL en utilisant la commande `mysql -u root -p`. Ensuite, j'ai sélectionné la base de données `bibliotheque` avec la commande `USE bibliotheque;` et vérifié la connexion à l'aide de `SELECT DATABASE();`.


Sélection de toutes les colonnes

Dans cette étape, j'ai appris à utiliser la commande `SELECT * FROM auteur` pour afficher toutes les colonnes et tous les enregistrements de la table `auteur`. J'ai également utilisé `COUNT(*)` pour compter le nombre total d'enregistrements et `LIMIT` pour limiter le nombre de résultats affichés.

### Sélection de colonnes spécifiques

Dans cette étape, j'ai appris à sélectionner uniquement les colonnes nécessaires d'une table en utilisant `SELECT`. J'ai également découvert l'utilisation de l'alias `AS` pour renommer temporairement les colonnes dans les résultats, afin d'améliorer leur lisibilité et leur présentation.


### Utilisation de la clause WHERE

Dans cette étape, j'ai appris à utiliser la clause `WHERE` pour filtrer les enregistrements selon des conditions précises. J'ai appliqué des filtres sur les valeurs booléennes et les dates. Enfin, j'ai combiné `WHERE` avec `ORDER BY` pour trier les résultats filtrés par ordre alphabétique.


### Opérateurs de comparaison

Dans cette étape, j'ai découvert les différents opérateurs de comparaison en SQL, comme `=`, `<>`, `!=`, `<` et `>`. Je les ai utilisés pour filtrer les données de la table `ouvrage` selon plusieurs conditions, notamment avec les colonnes `id`, `isbn` et `disponible`. J'ai aussi utilisé `DESCRIBE` pour voir les colonnes disponibles dans la table.


SELECT titre, disponible
FROM ouvrage
WHERE disponible = 1;

SELECT titre, isbn
FROM ouvrage
WHERE isbn <> '1234567890123';

SELECT titre, id
FROM ouvrage
WHERE id > 3;


### Opérateurs logiques

Dans cette partie, j'ai découvert comment utiliser `AND`, `OR` et `NOT` pour ajouter plusieurs conditions dans mes requêtes SQL. J'ai fait des exemples pour rechercher des ouvrages selon leur disponibilité, trouver des abonnés avec une adresse Gmail ou Yahoo, et afficher les auteurs dont le nom ne commence pas par la lettre A.

### Recherche par motif avec LIKE

Dans cette partie, j'ai appris à utiliser `LIKE` pour rechercher des informations à partir d'un mot ou d'une partie d'un texte. J'ai découvert les deux caractères `%` et `_`, qui permettent de définir différents motifs de recherche. J'ai aussi vu comment utiliser `BINARY` pour effectuer une recherche en tenant compte des majuscules et des minuscules.


### Ensembles et intervalles

Dans cette partie, j'ai appris à utiliser `IN` et `NOT IN` pour rechercher des valeurs qui appartiennent ou non à une liste précise. J'ai également découvert `BETWEEN` et `NOT BETWEEN` pour filtrer les données dans un intervalle, notamment avec les dates. J'ai aussi compris que `BETWEEN` prend en compte les deux limites de l'intervalle.

### Gestion des valeurs NULL

Dans cette partie, j'ai appris à reconnaître les champs qui ne contiennent aucune donnée avec `IS NULL` et ceux qui contiennent une valeur avec `IS NOT NULL`. J'ai aussi découvert `COALESCE`, qui permet de remplacer temporairement une valeur `NULL` par une valeur par défaut lors de l'affichage.


### Tri, pagination et agrégations

Dans cette partie, j'ai appris à trier les résultats avec `ORDER BY` et à afficher les données par pages grâce à `LIMIT` et `OFFSET`. J'ai également découvert les fonctions d'agrégation comme `COUNT()` pour compter les enregistrements, ainsi que `GROUP BY` et `HAVING` pour regrouper les données et filtrer les groupes selon certaines conditions.





## Bilan des exercices pratiques

Dans ce laboratoire, j'ai mis en pratique les différentes notions SQL étudiées à travers cinq exercices : le tri des ouvrages, la recherche des auteurs selon la longueur de leur nom, le filtrage des emails, la recherche des emprunts en retard et le calcul des statistiques par auteur.

J'ai réussi à exécuter quatre requêtes et à exporter leurs résultats dans des fichiers CSV à l'aide de `SELECT INTO OUTFILE`.

J'ai également créé le fichier `lab3_exercices.sql` pour organiser et documenter les requêtes avec des commentaires.

**Remarque :** Le quatrième exercice n'a pas pu être exécuté, car les colonnes `date_fin_prevue` et `date_retour_effective` ne sont pas présentes dans la structure actuelle de la table `emprunt`.

## Fichiers générés

- `lab3_exercices.sql`
- `ouvrages_recents.csv`
- `auteurs_nom_long.csv`
- `abonnes_hors_domaine.csv`
- `statistiques_auteur.csv`

tous les images qui illustre chaque etape:

<img width="470" height="389" alt="Screenshot 2026-11-22 012140" src="https://github.com/user-attachments/assets/836a13d6-61d9-48e1-9c95-8218c1efcbac" />
<img width="470" height="389" alt="Screenshot 2026-11-22 012140 - Copy" src="https://github.com/user-attachments/assets/dfd27afb-3185-4b5c-aa08-a3a43e5546b2" />
<img width="959" height="313" alt="Screenshot 2026-11-22 152828" src="https://github.com/user-attachments/assets/02987871-b39e-493b-b6cb-eacf00030514" />
<img width="924" height="440" alt="Screenshot 2026-11-22 152709" src="https://github.com/user-attachments/assets/0f6de0e9-30e5-410a-9e49-e6f78ae026d5" />
<img width="749" height="337" alt="Screenshot 2026-11-22 025523" src="https://github.com/user-attachments/assets/57496ca7-9e85-4182-ae2a-97ed9bb87428" />
<img width="430" height="148" alt="Screenshot 2026-11-22 024932" src="https://github.com/user-attachments/assets/8ff9ed61-00b8-4dfa-bb83-72f13571fa1a" />
<img width="465" height="437" alt="Screenshot 2026-11-22 023648" src="https://github.com/user-attachments/assets/5061e33f-744a-45b2-9ac4-714353ba1928" />
<img width="466" height="347" alt="Screenshot 2026-11-22 023333" src="https://github.com/user-attachments/assets/8648bb2b-76f5-41e1-9afd-c968087c07b2" />
<img width="448" height="269" alt="Screenshot 2026-11-22 022535" src="https://github.com/user-attachments/assets/d6107428-6f68-4324-800d-204b03e2633a" />
<img width="340" height="308" alt="Screenshot 2026-11-22 020901" src="https://github.com/user-attachments/assets/c6b3409a-4586-4206-9ec2-a5b1a8114033" />
<img width="461" height="398" alt="Screenshot 2026-11-22 014539" src="https://github.com/user-attachments/assets/8e338314-cb04-4994-b940-3bb7a20b5a6e" />
<img width="369" height="247" alt="Screenshot 2026-11-22 014100" src="https://github.com/user-attachments/assets/80482ae7-8a00-4786-8f9a-c4adac785e0e" />
<img width="430" height="245" alt="Screenshot 2026-11-22 013157" src="https://github.com/user-attachments/assets/01832239-223b-44f1-83e3-176df590deb7" />
