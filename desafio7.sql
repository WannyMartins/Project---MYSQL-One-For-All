SELECT 
	a.nome AS artista, 
	al.nome AS album,
	COUNT(*) AS seguidores
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.albuns al
ON a.id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artista s
ON s.artista_id = a.id
GROUP BY s.artista_id, al.nome
ORDER BY seguidores DESC, artista, album;