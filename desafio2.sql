SELECT 
	COUNT(*) AS cancoes,
  COUNT(DISTINCT artista_id) AS artistas,
	COUNT(distinct album_id) AS albuns  
FROM SpotifyClone.musicas m 
INNER JOIN SpotifyClone.albuns al 
		ON al.id = m.album_id;
