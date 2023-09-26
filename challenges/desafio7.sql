SELECT 
    SpotifyClone.artistas.nome AS artista,
    SpotifyClone.albums.albums AS album,
    COUNT(SpotifyClone.seguindo.artista_id) AS pessoas_seguidoras
FROM 
    SpotifyClone.artistas
INNER JOIN 
    SpotifyClone.albums
ON 
    SpotifyClone.artistas.id = SpotifyClone.albums.artista_id
INNER JOIN
    SpotifyClone.seguindo
ON
    SpotifyClone.artistas.id = SpotifyClone.seguindo.artista_id
GROUP BY
    artista, album
ORDER BY
    pessoas_seguidoras DESC, artista, album;
