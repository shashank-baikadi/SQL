CREATE TABLE demo_table (id INT, name VARCHAR(50));
INSERT INTO demo_table (id, name) VALUES (1, 'John');
INSERT INTO demo_table (id, name) VALUES (2, 'Smith');

SELECT * FROM demo_table;

DELETE FROM demo_table;

-- finds duplicates
SELECT * FROM demo_table
WHERE rowid NOT IN (
    SELECT MIN(rowid)
    FROM demo_table
    GROUP BY id, name
);

-- Remove duplicates
DELETE FROM demo_table
WHERE rowid NOT IN (
    SELECT MIN(rowid)
    FROM demo_table
    GROUP BY id, name
);

