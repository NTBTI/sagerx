/* datasource.fda_unfinished_product*/
DROP TABLE IF EXISTS datasource.fda_unfinished_product CASCADE;

CREATE TABLE datasource.fda_unfinished_product (
productid                           TEXT,
productndc                          TEXT,
producttypename                     TEXT,
nonproprietaryname                  TEXT,
dosageformname                      TEXT,
startmarketingdate                  TEXT,
endmarketingdate                    TEXT,
marketingcategoryname               TEXT,
labelername                         TEXT,
substancename                       TEXT,
active_numerator_strength           TEXT,
active_ingred_unit                  TEXT,
deaschedule                         TEXT,
listing_record_certified_through    TEXT,
PRIMARY KEY (productid)
);

COPY datasource.fda_unfinished_product
FROM '{data_path}/unfinished_product.txt'
DELIMITER E'\t' CSV HEADER ENCODING 'WIN1252';