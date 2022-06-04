SELECT m.nome AS cancao, 
    COUNT(*) AS reproducoes
  FROM SpotifyClone.historico_reproducoes hr
INNER JOIN SpotifyClone.musicas m ON hr.musica_id = m.id
GROUP BY hr.musica_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;

