SELECT us.nome_usuario AS usuario, COUNT(hi.cancao_reproduzida) AS qt_de_musicas_ouvidas, ROUND(SUM(ca.duracao / 60),2) AS total_minutos
FROM SpotifyClone.usuarios AS us
	JOIN SpotifyClone.historico_reproducao AS hi ON us.usuario_id = hi.usuario_id
    JOIN SpotifyClone.cancoes AS ca ON hi.cancao_reproduzida = ca.cancao_id
    GROUP BY us.nome_usuario
    ORDER BY us.nome_usuario;