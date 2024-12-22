DROP TABLE IF EXISTS hamza.silver_views;
CREATE TABLE hamza.silver_views
    WITH (
          format = 'PARQUET',
          parquet_compression = 'SNAPPY',
          external_location = 's3://hamza-dhich-wikidata/datalake/silver_views/'
    ) AS
    SELECT 
        title,
        views,
        rank,
        date
    FROM hamza.bronze_views;