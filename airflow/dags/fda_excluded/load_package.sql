/* datasource.fda_excluded_package */
DROP TABLE IF EXISTS datasource.fda_excluded_package CASCADE;

CREATE TABLE datasource.fda_excluded_package (
productid           TEXT NOT NULL,
productndc          TEXT NOT NULL,
ndcpackagecode      TEXT,
packagedescription  TEXT,
startmarketingdate  TEXT,
endmarketingdate    TEXT,
ndc_exclude_flag    TEXT,
sample_package      TEXT
);

COPY datasource.fda_excluded_package
FROM '{data_path}/Packages_excluded.txt' DELIMITER E'\t' CSV HEADER ENCODING 'WIN1252';;