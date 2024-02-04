-- Bottom 5 sales

use pizza;

CREATE VIEW `desc_rev` 
AS
SELECT
db.name,
db.Tot_Cost
FROM 
dash2_base db
ORDER BY
db.Tot_Cost DESC
LIMIT
5