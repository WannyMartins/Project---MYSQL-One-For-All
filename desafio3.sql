SELECT u.nome AS usuario, 
	COUNT(hr.musica_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(m.duracao_segundos)/60, 2) AS total_minutos
FROM SpotifyClone.users u
  INNER JOIN SpotifyClone.historico_reproducoes hr
    ON hr.user_id=u.id
  INNER JOIN SpotifyClone.musicas m
    ON m.id=hr.musica_id
  GROUP BY hr.user_id
  ORDER BY usuario;