SELECT ar.nome_artista AS artista, al.titulo_album AS album
FROM SpotifyClone.artistas AS ar
	JOIN SpotifyClone.albums AS al
    ON al.artista_id = ar.artista_id
    WHERE ar.nome_artista = 'Elis Regina'
    ORDER BY al.titulo_album;