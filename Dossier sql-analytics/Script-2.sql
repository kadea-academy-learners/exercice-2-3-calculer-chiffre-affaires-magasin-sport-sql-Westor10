SELECT SUM(v.quantite * v.prix_unitaire ) AS 'Chiffre daffaire Total'
FROM ventes v
WHERE v.categorie_produit = 'Tennis';

SELECT SUM(stock) AS 'Chiffre global'
FROM produits p 
WHERE p.nom_produit LIKE '%RANDO%';

SELECT c.ville, COUNT(c.id_client )
FROM clients c 
WHERE c.ville IN ('Bukavu','Matadi')
GROUP BY c.ville;

SELECT AVG(p.prix )
FROM produits p 
WHERE p.categorie = 'Combat' AND p.prix BETWEEN 20 AND 50;

SELECT COUNT(v.id_vente ) AS 'Total transactions'
FROM ventes v  
JOIN clients c ON c.id_client = v.id_vente  
WHERE v.ville_client  = 'Lubumbashi'
AND v.date_inscription_client  < '31-01-2025';

SELECT p.categorie, SUM(p.prix )  
FROM produits p 
GROUP BY p.categorie;