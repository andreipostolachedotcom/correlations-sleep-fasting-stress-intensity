/* Correlations */
select TO_CHAR(dd_Calendardate, 'Mon-YYYY') AS month_year,
corr(ct_sleepscore,ct_fastinghours) as Corr_Sleep_Fasting,
corr(ct_sleepscore,ct_stress) as Corr_Sleep_Stress,
corr(ct_sleepscore,ct_intensityminutes) as Corr_Sleep_IntensityMinutes,
from fact_correlations_daily
group by TO_CHAR( dd_Calendardate, 'Mon-YYYY')
;
select
corr(ct_sleepscore,ct_fastinghours) as Corr_Sleep_Fasting,
corr(ct_sleepscore,ct_stress) as Corr_Sleep_Stress,
corr(ct_sleepscore,ct_intensityminutes) as Corr_Sleep_IntensityMinutes,
from fact_correlations_daily
;
