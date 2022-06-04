SELECT a.nome AS artista, 
		al.nome AS album
FROM SpotifyClone.albuns al
INNER JOIN SpotifyClone.artistas a
ON a.id = al.artista_id 
WHERE a.nome = 'Walter Phoenix'
ORDER BY album;