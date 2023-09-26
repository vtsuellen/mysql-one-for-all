SELECT
    ROUND(MIN(SpotifyClone.planos.valor), 2) AS faturamento_minimo,
    ROUND(MAX(SpotifyClone.planos.valor), 2) AS faturamento_maximo,
    ROUND(AVG(SpotifyClone.planos.valor), 2) AS faturamento_medio,
    ROUND(SUM(SpotifyClone.planos.valor), 2) AS faturamento_total
FROM
    SpotifyClone.usuarios 
INNER JOIN
    SpotifyClone.planos 
ON
    SpotifyClone.usuarios.plano_id = SpotifyClone.planos .id;
