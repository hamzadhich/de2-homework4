DROP TABLE IF EXISTS hamza.bronze_views;
CREATE EXTERNAL TABLE
hamza.bronze_views (
    title STRING,
    views INT,
    rank INT,
    date DATE,
    retrieved_at STRING
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://hamza-dhich-wikidata/datalake/views/';