-- Bottom 5 quantities sold

use pizza;

CREATE VIEW `desc_quant` 
AS
SELECT
db.name,
db.Tot_Quant
FROM 
dash2_base db
ORDER BY
db.Tot_Quant DESC
LIMIT
5