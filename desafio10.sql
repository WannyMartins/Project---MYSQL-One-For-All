SELECT 
	m.nome AS nome, 
    COUNT(*) AS reproducoes
    FROM SpotifyClone.historico_reproducoes hr
INNER JOIN SpotifyClone.musicas m ON hr.musica_id = m.id
INNER JOIN SpotifyClone.users u ON hr.user_id = u.id
INNER JOIN SpotifyClone.planos p ON p.id = u.plano_id
WHERE p.nome = 'gratuito' OR p.nome = 'pessoal'
GROUP BY m.nome
ORDER BY m.nome;