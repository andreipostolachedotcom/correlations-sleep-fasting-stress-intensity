/* ODS */
/* Sleep */
CREATE OR REPLACE TABLE SleepData (
calendarDate DATE
,sleepScore INT);

INSERT INTO SleepData
SELECT calendarDate, LAG(sleepScore) OVER (ORDER BY calendarDate ASC) AS sleepScore FROM (
SELECT
TO_DATE(value:calendarDate::STRING, 'YYYY-MM-DD') AS calendarDate
, value:sleepScores:overallScore::INTEGER AS sleepScore
FROM
STAGING.SleepData_stg,
LATERAL FLATTEN(INPUT => STAGING.SleepData_stg.SleepData_stg)
);
/* IntensityMinutes */
CREATE OR REPLACE TABLE INTENSITYMINUTESDATA AS
SELECT calendarDate, actual as intensityMinutes
FROM Staging.INTENSITYMINUTESDATA_STG
WHERE calendardate IS NOT NULL;
/* Stress */
CREATE OR REPLACE TABLE STRESSDATA AS
SELECT TO_DATE(CONCAT('2024',calendardate),'YYYY Mon DD') AS calendarDate, stress
FROM Staging.stressdata_stg;
/* Fasting */
CREATE OR REPLACE TABLE FASTINGDATA AS
SELECT CALENDARDATE, FASTINGHOURS
FROM Staging.FASTINGDATA_STG;
