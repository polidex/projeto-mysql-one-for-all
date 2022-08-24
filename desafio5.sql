SELECT ca.titulo_cancao AS cancao, COUNT(cancao_reproduzida) AS reproducoes
FROM SpotifyClone.cancoes AS ca
	JOIN SpotifyClone.historico_reproducao AS hi ON hi.cancao_reproduzida = ca.cancao_id
	GROUP BY ca.cancao_id
    ORDER BY reproducoes DESC, ca.titulo_cancao
    LIMIT 2;