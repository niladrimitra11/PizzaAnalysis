-- Bottom 5 orders

use pizza;

CREATE VIEW `desc_orders` 
AS
SELECT
db.name,
db.Tot_Orders
FROM 
dash2_base db
ORDER BY
db.Tot_Orders DESC
LIMIT
5