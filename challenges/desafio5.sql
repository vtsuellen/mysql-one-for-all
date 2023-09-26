SELECT
    SpotifyClone.musicas.nome AS cancao,
    COUNT(SpotifyClone.historico.usuario_id) AS reproducoes
FROM
    SpotifyClone.musicas 
INNER JOIN
    SpotifyClone.historico 
ON
    SpotifyClone.musicas.id = SpotifyClone.historico.musica_id
GROUP BY
    SpotifyClone.musicas.nome
ORDER BY
    reproducoes DESC,
    cancao ASC
LIMIT 2;
