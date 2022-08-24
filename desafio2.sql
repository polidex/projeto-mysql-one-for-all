SELECT COUNT(ca.cancao_id) AS cancoes, COUNT(DISTINCT(al.artista_id)) AS artistas,
COUNT(DISTINCT(ca.album_id)) AS albuns
FROM SpotifyClone.cancoes AS ca
INNER JOIN SpotifyClone.albums AS al
ON ca.album_id = al.album_id;