/* Staging */
create or replace TABLE CORRELATIONS.STAGING.SLEEPDATA_STG (SLEEPDATA_STG VARIANT);

COPY INTO SleepData_stg
FROM 'azure://adlsqqqqqqqqqqqqq.blob.core.windows.net/garmindata/'
CREDENTIALS=(AZURE_SAS_TOKEN='sv=2022–11–02&ss=bfqt&srt=sco&sp=rwdlacupyx&se=2024–03–16T21:28:53Z&st=2024–03–03T13:28:53Z&spr=https&sigqqqqqqqqqqqqqqqqqqqqqqq')
FILE_FORMAT = (TYPE = 'JSON');
