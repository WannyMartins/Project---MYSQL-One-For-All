SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducoes hr
INNER JOIN SpotifyClone.users u
ON hr.user_id = u.id
WHERE u.nome = 'Bill';