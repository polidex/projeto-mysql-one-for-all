SELECT ar.nome_artista AS artista, al.titulo_album AS album, COUNT(se.artista_seguido) AS seguidores
FROM SpotifyClone.artistas AS ar
	JOIN SpotifyClone.albums AS al ON al.artista_id = ar.artista_id
	JOIN SpotifyClone.seguindo AS se ON ar.artista_id = se.artista_seguido
	GROUP BY ar.artista_id, al.album_id
    ORDER BY seguidores DESC, artista, album;