DROP TABLE IF EXISTS hamza.gold_allviews;
CREATE TABLE hamza.gold_allviews
WITH (
    format = 'PARQUET',
    parquet_compression = 'SNAPPY',
    external_location = 's3://hamza-dhich-wikidata/datalake/gold_allviews/'
) AS
SELECT 
    title AS article,
    SUM(views) AS total_top_view,
    MIN(rank) AS top_rank,
    COUNT(DISTINCT date) AS ranked_days
FROM hamza.silver_views
GROUP BY title
ORDER BY top_rank ASC
;