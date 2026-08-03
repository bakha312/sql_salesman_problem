CREATE TABLE IF NOT EXISTS nodes (
    id INT PRIMARY KEY,
    point1 VARCHAR(1),
    point2 VARCHAR(1),
    cost INT
);

INSERT INTO nodes (id, point1, point2, cost)
VALUES
        (1, 'a', 'b', 10),
        (2, 'b', 'a', 10),
        (3, 'a', 'c', 15),
        (4, 'c', 'a', 15),
        (5, 'a', 'd', 20),
        (6, 'd', 'a', 20),
        (7, 'b', 'c', 35),
        (8, 'c', 'b', 35),
        (9, 'b', 'd', 25),
        (10, 'd', 'b', 25),
        (11, 'c', 'd', 30),
        (12, 'd', 'c', 30);

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
ORDER BY total_cost, tour;