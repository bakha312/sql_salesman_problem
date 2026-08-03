WITH
    RECURSIVE paths AS (
    SELECT
        'a'::varchar AS current_point,
        'a'::varchar AS tour,
        0::int AS total_cost,
        1::int AS points_count

    UNION ALL

    SELECT
        nodes.point2 AS current_point,
        paths.tour || ',' || nodes.point2 AS tour,
        paths.total_cost + nodes.cost AS total_cost,
        paths.points_count + 1 AS points_count
    FROM paths
             JOIN nodes ON nodes.point1 = paths.current_point
    WHERE POSITION(nodes.point2 IN tour) = 0
),
              full_paths AS (
                  SELECT
                      p.total_cost + n.cost AS total_cost,
                      '{' || tour::varchar || ',' || n.point2::varchar || '}' AS tour
                  FROM paths p
                           INNER JOIN nodes n ON n.point1 = p.current_point
                  WHERE
                      p.points_count = (SELECT MAX(points_count) FROM paths)
                    AND
                      n.point2 = 'a'::varchar
              )

SELECT *
FROM full_paths
WHERE total_cost = (SELECT MIN(total_cost) FROM full_paths)
   OR total_cost = (SELECT MAX(total_cost) FROM full_paths)
ORDER BY total_cost, tour;