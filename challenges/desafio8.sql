SELECT
    a.nome AS artista,
    al.albums AS album
FROM
    SpotifyClone.artistas AS a
JOIN
    SpotifyClone.albums AS al ON a.id = al.artista_id
WHERE
    a.nome = 'Elis Regina'
ORDER BY
    al.albums ASC;
