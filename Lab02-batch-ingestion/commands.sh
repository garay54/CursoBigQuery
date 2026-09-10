gcloud storage cp ../data/ecommerce_users.csv gs://curso-gcp-bigquery-bq-batch-ingestion-bucket-508219/raw/users/ecommerce_users.csv
gcloud storage cp ../data/products.json gs://curso-gcp-bigquery-bq-batch-ingestion-bucket-508219/raw/products/products.json

bq load --source_format=CSV --skip_leading_rows=1 --schema=../schemas/ecommerce_users_schema.json lab02_dataset.users gs://curso-gcp-bigquery-bq-batch-ingestion-bucket-508219/raw/users/ecommerce_users.csv

bq load --source_format=NEWLINE_DELIMITED_JSON --autodetect lab02_dataset.products gs://curso-gcp-bigquery-bq-batch-ingestion-bucket-508219/raw/products/products.json

bq query --use_legacy_sql=false (Get-Content ../sql/02_verify_batch_data.sql -Raw)
