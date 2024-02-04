-- Top 5 orders

use pizza;

CREATE VIEW `asc_orders` 
AS
SELECT
db.name,
db.Tot_Orders
FROM 
dash2_base db
ORDER BY
db.Tot_Orders ASC
LIMIT
5