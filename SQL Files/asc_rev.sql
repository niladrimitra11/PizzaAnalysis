-- Top 5 sales

use pizza;

CREATE VIEW `asc_rev` 
AS
SELECT
db.name,
db.Tot_Cost
FROM 
dash2_base db
ORDER BY
db.Tot_Cost ASC
LIMIT
5