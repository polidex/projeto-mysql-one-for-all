SELECT us.nome_usuario AS usuario, IF(YEAR(MAX(hi.data_reproducao)) > 2020,
	'Usuário ativo',
    'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuarios AS us
	JOIN SpotifyClone.historico_reproducao AS hi
	ON hi.usuario_id = us.usuario_id
    GROUP BY us.nome_usuario
    ORDER BY us.nome_usuario;