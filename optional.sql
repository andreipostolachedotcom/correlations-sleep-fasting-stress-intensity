/* Optional */
create STORAGE INTEGRATION lifespan_azure
TYPE = EXTERNAL_STAGE
STORAGE_PROVIDER = 'AZURE'
ENABLED = TRUE
AZURE_TENANT_ID = 'cc3ed74e-3348–4cfe-b240-qqqqq270d83d'
STORAGE_ALLOWED_LOCATIONS = ('azure://adlsqqqqqqqqqqqqq.blob.core.windows.net/garmindata/');

CREATE STAGE sleepdata_Azure
URL = 'azure://adlsqqqqqqqqqqqqq.blob.core.windows.net/garmindata/2023–11–25_2024–03–04_79428392_sleepData.json'
STORAGE_INTEGRATION = LIFESPAN_AZURE
DIRECTORY = ( ENABLE = true );
