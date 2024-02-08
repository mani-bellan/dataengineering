CREATE OR REPLACE EXTERNAL TABLE `ny_taxi.greentaxi_tripdata`
OPTIONS (
  format = 'PARQUET',
  uris = ['gs://mage-zoom-data-bucket/green_taxi_2022/*.parquet']
);


SELECT count(*) FROM `ny_taxi.greentaxi_tripdata`; -- 840402


SELECT COUNT(DISTINCT(PULocationID)) FROM `ny_taxi.greentaxi_tripdata`; -- 0MB

CREATE OR REPLACE TABLE ny_taxi.greentaxi_tripdata_nonpartitioned
AS SELECT * FROM ny_taxi.greentaxi_tripdata;

SELECT COUNT(DISTINCT(PULocationID)) FROM `ny_taxi.greentaxi_tripdata_nonpartitioned`; -- 6.41MB

select count(1) from `ny_taxi.greentaxi_tripdata_nonpartitioned` where fare_amount = 0; --1622

CREATE OR REPLACE TABLE `ny_taxi.greentaxi_tripdata_partitioned`
PARTITION BY DATE(lpep_pickup_datetime)
CLUSTER BY PULocationID AS (
  SELECT * FROM `ny_taxi.greentaxi_tripdata`
);

SELECT distinct(PULocationID) FROM  `ny_taxi.greentaxi_tripdata_nonpartitioned`
WHERE DATE(lpep_pickup_datetime) BETWEEN '2022-06-01' AND '2022-06-30'; --12.82 MB


SELECT distinct(PULocationID) FROM  `ny_taxi.greentaxi_tripdata_partitioned`
WHERE DATE(lpep_pickup_datetime) BETWEEN '2022-06-01' AND '2022-06-30'; -- 1.12 MB