SELECT SpotifyClone.usuarios.nome AS pessoa_usuaria, 
COUNT(SpotifyClone.historico.musica_id) AS musicas_ouvidas,
ROUND(SUM(SpotifyClone.musicas.duracao)/60, 2) AS total_minutos
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.historico
ON SpotifyClone.historico.usuario_id = SpotifyClone.usuarios.id
INNER JOIN SpotifyClone.musicas
ON SpotifyClone.historico.musica_id = SpotifyClone.musicas.id
GROUP BY SpotifyClone.usuarios.nome
ORDER BY SpotifyClone.usuarios.nome;