
#############################
#specefic events
#############################
blizzard_events_county <- subset(counties_events, counties_events$event_type == "Blizzard")
coastal_flood_county <- subset(counties_events, counties_events$event_type == "Coastal Flood")
drought_events_county <- subset(counties_events, counties_events$event_type == "Drought")
flash_events_county <- subset(counties_events, counties_events$event_type == "Flash Flood")
flood_events_county <- subset(counties_events, grepl("Flood", counties_events$event_type))
heat_events_county <- subset(counties_events, counties_events$event_type == "Excessive Heat")
tornado_events_county <- subset(counties_events, counties_events$event_type == "Tornado")
wildfire_events_county <- subset(counties_events, counties_events$event_type == "Wildfire")

blizzard_events_yale <- subset(yale_merge_events, yale_merge_events$event_type == "Blizzard")
coastal_flood_yale <- subset(yale_merge_events, yale_merge_events$event_type == "Coastal Flood")
drought_events_yale <- subset(yale_merge_events, yale_merge_events$event_type == "Drought")
flash_events_yale <- subset(yale_merge_events, yale_merge_events$event_type == "Flash Flood")
flood_events_yale <- subset(yale_merge_events, grepl("Flood", yale_merge_events$event_type))
heat_events_county_yale <- subset(yale_merge_events, yale_merge_events$event_type == "Excessive Heat")
tornado_events_county_yale <- subset(yale_merge_events, yale_merge_events$event_type == "Tornado")
wildfire_events_yale <- subset(yale_merge_events, yale_merge_events$event_type == "Wildfire")

cor(blizzard_events_yale$personal,blizzard_events_yale$total_3, use = "complete.obs")
blizzard_events_yale_chart <- ggScatter(blizzard_events_yale,
              blizzard_events_yale$happening,
              blizzard_events_yale$total_3,
              "lm",
              "Believe and Blizzards",
              "percent believe",
              "total blizzards",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))
ggsave(paste(output_charts,"blizzard_events_yale_chart.png"), blizzard_events_yale_chart, width=4, height=3)


cor(coastal_flood_yale$personal,coastal_flood_yale$total_3,use = "complete.obs")
coastal_flood_yale_chart <- ggScatter(coastal_flood_yale,
              coastal_flood_yale$happening,
              coastal_flood_yale$total_3,
              "lm",
              "Believe and Coastal Floods",
              "percent believe",
              "total coastal floods",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))
ggsave(paste(output_charts,"coastal_flood_yale_chart.png"), coastal_flood_yale_chart, width=4, height=3)

cor(drought_events_yale$personal,drought_events_yale$total_3,use = "complete.obs")
drought_events_yale_chart <- ggScatter(drought_events_yale,
              drought_events_yale$happening,
              drought_events_yale$total_3,
              "lm",
              "Believe and Drought",
              "percent believe",
              "total drought",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))
ggsave(paste(output_charts,"drought_events_yale_chart.png"), drought_events_yale_chart, width=4, height=3)

cor(flash_events_yale$personal,flash_events_yale$total_3,use = "complete.obs")
flash_events_yale_chart <- ggScatter(flash_events_yale,
              flash_events_yale$happening,
              flash_events_yale$total_3,
              "lm",
              "Believe and Flash Floods",
              "percent believe",
              "total flash floods",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))
ggsave(paste(output_charts,"flash_events_yale_chart.png"), flash_events_yale_chart, width=4, height=3)

cor(flood_events_yale$personal,flood_events_yale$total_3,use = "complete.obs")
flood_events_yale_chart <- ggScatter(flood_events_yale,
              flood_events_yale$happening,
              flood_events_yale$total_3,
              "lm",
              "Believe and Floods",
              "percent believe",
              "total floods",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))
ggsave(paste(output_charts,"flood_events_yale_chart.png"), flood_events_yale_chart, width=4, height=3)

cor(heat_events_county_yale$personal,heat_events_county_yale$total_3,use = "complete.obs")
heat_events_county_yale_chart <- ggScatter(heat_events_county_yale,
              heat_events_county_yale$happening,
              heat_events_county_yale$total_3,
              "lm",
              "Believe and Heat",
              "percent believe",
              "total heat",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))
ggsave(paste(output_charts,"heat_events_county_yale_chart.png"), heat_events_county_yale_chart, width=4, height=3)

cor(tornado_events_county_yale$personal,tornado_events_county_yale$total_3,use = "complete.obs")
tornado_events_county_yale_chart <- ggScatter(tornado_events_county_yale,
              tornado_events_county_yale$happening,
              tornado_events_county_yale$total_3,
              "lm",
              "Believe and Tornado",
              "percent believe",
              "total tornados",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))
ggsave(paste(output_charts,"tornado_events_county_yale_chart.png"), tornado_events_county_yale_chart, width=4, height=3)

cor(wildfire_events_yale$personal,wildfire_events_yale$total_3,use = "complete.obs")
wildfire_events_yale_chart<- ggScatter(wildfire_events_yale,
              wildfire_events_yale$happening,
              wildfire_events_yale$total_3,
              "lm",
              "Believe and Wildfire",
              "percent believe",
              "total wildfire",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))
ggsave(paste(output_charts,"wildfire_events_yale_chart.png"), wildfire_events_yale_chart, width=4, height=3)

mixall <- subset(yale_merge_events,
    yale_merge_events$event_type == "Flash Flood" |
    yale_merge_events$event_type == "Wildfire" |
    yale_merge_events$event_type == "Excessive Heat"|
    yale_merge_events$event_type == "Blizzard"|
    yale_merge_events$event_type == "Drought"|
    yale_merge_events$event_type == "Extreme Cold/Wind Chill")


mixall_believe_chart <- ggScatterDigfac2(mix,mix$happening,mix$total_10,"percent believe", "number of events", "Believe","event_type", source_noaa)
ggsave(paste(output_charts,"mixall_believe_chart.png"), mixall_believe_chart, width=4, height=3)

mixall_harm_chart <- ggScatterDigfac2(mix,mix$personal,mix$total_10,"percent harm me", "number of events", "Harm me","event_type", source_noaa)
ggsave(paste(output_charts,"mixall_harm_chart.png"), mixall_harm_chart, width=4, height=3)

mixall_timing_chart <- ggScatterDigfac2(mix,mix$timing,mix$total_10,"percent harm others", "number of events", "Harm others","event_type", source_noaa)
ggsave(paste(output_charts,"mixall_timing_chart.png"), mixall_timing_chart, width=4, height=3)

mixfew <- subset(yale_merge_events,
    yale_merge_events$event_type == "Wildfire" |
    yale_merge_events$event_type == "Excessive Heat"|
    yale_merge_events$event_type == "Drought")

cor(mixfew$personal,mixfew$total_3,use = "complete.obs")

mixfew_believe_chart <- ggScatterDigfac2(mixfew,mixfew$happening,mixfew$total_10,"percent believe", "number of events", "Believe","event_type", source_noaa)
ggsave(paste(output_charts,"mixfew_believe_chart.png"), mixfew_believe_chart, width=4, height=3)

mixfew_harm_chart <- ggScatterDigfac2(mixfew,mixfew$personal,mixfew$total_10,"percent harm me", "number of events", "Harm me","event_type", source_noaa)
ggsave(paste(output_charts,"mixfew_harm_chart.png"), mixfew_harm_chart, width=4, height=3)

mixfew_timing_chart <- ggScatterDigfac2(mixfew,mixfew$timing,mixfew$total_10,"percent harm others", "number of events", "Harm others","event_type", source_noaa)
ggsave(paste(output_charts,"mixfew_timing_chart.png"), mixfew_timing_chart, width=4, height=3)

cor(mixfew$personal,mixfew$total_3,use = "complete.obs")
