SELECT MIN(pl.preco) AS faturamento_minimo, MAX(pl.preco) AS faturamento_maximo,
	ROUND(AVG(pl.preco),2) AS faturamento_medio, SUM(pl.preco) AS faturamento_total
FROM SpotifyClone.planos AS pl
INNER JOIN SpotifyClone.usuarios AS us ON pl.plano_id = us.plano_id;