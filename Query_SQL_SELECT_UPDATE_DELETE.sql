SELECT * FROM client WHERE ville='Delmas'
SELECT * FROM vente
SELECT * FROM produit WHERE prix=150 AND Qstock=5
SELECT * FROM produit WHERE NOT prix=150 AND NOT Qstock=3

SELECT IdPro, datev FROM vente ORDER BY datev, IdPro ASC
SELECT nom, ville FROM client WHERE ville='Delmas' ORDER BY nom 

UPDATE client SET nom='Aldenius' WHERE IdCli=054

SELECT IdCli, nom from client WHERE ville='Delmas'

UPDATE client SET ville='Petion-Ville' WHERE nom='Jean'

DELETE FROM client WHERE IdCli=076

SELECT TOP 50 PERCENT * from client
SELECT MAX(Prix) AS LargestPrice FROM produit
SELECT SUM(Prix) FROM produit

