SELECT u.nome AS usuario, 
IF(MAX(YEAR(hr.data_reproducao)) < 2021, 'Usuário inativo', 'Usuário ativo') 
        AS condicao_usuario
FROM SpotifyClone.users u 
INNER JOIN SpotifyClone.historico_reproducoes hr
ON hr.user_id=u.id
GROUP BY usuario;