
#############################
#make NOAA check charts
#############################

#dense fog check NOAA storm events
densefog_chart <- ggHours(dense_fog_t, dense_fog_t$begin_hour, "Dense Fog", source_noaa)
ggsave(paste(output_charts,"densefog_chart.png"), densefog_chart, width=4, height=3)

#Hail and Tornados check noaa storm events
hail_and_tornado_chart <- ggHours(hail_and_tornado_events_t, hail_and_tornado_events_t$begin_hour, "Hail and Tornados", source_noaa)
ggsave(paste(output_charts,"hail_and_tornado_chart.png"), hail_and_tornado_chart, width=4, height=3)

#coastal flooding NOAA storm events
CoastalFlood_chart <- ggHours(coastal_flood_t, coastal_flood_t$begin_hour, "Coastal Flood", source_noaa)
ggsave(paste(output_charts,"CoastalFlood_chart.png"), CoastalFlood_chart, width=4, height=3)

#years and event count
allyear_chart <- ggYear(counties_events,counties_events$year,67, source_noaa)
ggsave(paste(output_charts,"allyear_chart.png"), allyear_chart, width=4, height=3)

#split event types for all yeas
allyear_type_chart <- ggYearFac(counties_events,counties_events$year, 67, "event_type", source_noaa)
ggsave(paste(output_charts,"allyear_type_chart.png"), allyear_type_chart, width=4, height=3)
