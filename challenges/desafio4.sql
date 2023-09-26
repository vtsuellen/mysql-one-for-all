SELECT 
    SpotifyClone.usuarios.nome AS pessoa_usuaria,
    CASE 
        WHEN MAX(SpotifyClone.historico.data_reproducao) >= '2021-01-01' THEN 'Ativa'
        ELSE 'Inativa'
    END AS status_pessoa_usuaria
FROM 
    SpotifyClone.usuarios
LEFT JOIN 
    SpotifyClone.historico ON SpotifyClone.historico.usuario_id = SpotifyClone.usuarios.id
GROUP BY 
    SpotifyClone.usuarios.nome
ORDER BY 
    SpotifyClone.usuarios.nome;

