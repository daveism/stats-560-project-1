#############################
#maps for events
#############################

##add new fields based event totals and averages
counties$blizzard <- blizzard_events_yale$total_10[match(counties$yale_match, blizzard_events_yale$yale_match)]
counties$blizzarda <- blizzard_events_yale$avg_10[match(counties$yale_match, blizzard_events_yale$yale_match)]

counties$coastal_flood <- coastal_flood_yale$total_10[match(counties$yale_match, coastal_flood_yale$yale_match)]
counties$coastal_flooda <- coastal_flood_yale$avg_10[match(counties$yale_match, coastal_flood_yale$yale_match)]

counties$drought_events <- drought_events_yale$total_10[match(counties$yale_match, drought_events_yale$yale_match)]
counties$drought_eventsa <- drought_events_yale$avg_10[match(counties$yale_match, drought_events_yale$yale_match)]

counties$flash_events <- flash_events_yale$total_10[match(counties$yale_match, flash_events_yale$yale_match)]
counties$flash_eventsa <- flash_events_yale$avg_10[match(counties$yale_match, flash_events_yale$yale_match)]

counties$flood_events <- flood_events_yale$total_10[match(counties$yale_match, flood_events_yale$yale_match)]
counties$flood_eventsa <- flood_events_yale$avg_10[match(counties$yale_match, flood_events_yale$yale_match)]

counties$heat_events <- heat_events_county_yale$total_10[match(counties$yale_match, heat_events_county_yale$yale_match)]
counties$heat_eventsa <- heat_events_county_yale$avg_10[match(counties$yale_match, heat_events_county_yale$yale_match)]

counties$tornado <- tornado_events_county_yale$total_10[match(counties$yale_match, tornado_events_county_yale$yale_match)]
counties$tornadoa <- tornado_events_county_yale$avg_10[match(counties$yale_match, tornado_events_county_yale$yale_match)]

counties$wildfire <- wildfire_events_yale$total_10[match(counties$yale_match, wildfire_events_yale$yale_match)]
counties$wildfirea <- wildfire_events_yale$avg_10[match(counties$yale_match, wildfire_events_yale$yale_match)]

##create mape
events_blizzard_map <- ggDaveismMapAuto(states, counties, counties$blizzard, "Blizzard Events Last 10 Years", "", source_noaa)
ggsave(events_blizzard_map, file = paste(output_maps,"events_blizzard_map.png"), width = 6, height = 4.5, type = "cairo-png")
events_blizzard_mapa <- ggDaveismMapAuto(states, counties, counties$blizzarda, "Blizzard Events Average 10 Years", "", source_noaa)
ggsave(events_blizzard_mapa, file = paste(output_maps,"events_blizzard_mapa.png"), width = 6, height = 4.5, type = "cairo-png")

events_costal_map <- ggDaveismMapAuto(states, counties, counties$coastal_flood, "Coastal Flood Events Last 10 Years", "", source_noaa)
ggsave(events_costal_map, file = paste(output_maps,"events_costal_map.png"), width = 6, height = 4.5, type = "cairo-png")
events_costal_mapa <- ggDaveismMapAuto(states, counties, counties$coastal_flooda, "Coastal Flood Average Last 10 Years", "", source_noaa)
ggsave(events_costal_mapa, file = paste(output_maps,"events_costal_mapa.png"), width = 6, height = 4.5, type = "cairo-png")

events_drought_map <- ggDaveismMapAuto(states, counties, counties$drought_events, "Drought Events Last 10 Years", "", source_noaa)
ggsave(events_drought_map, file = paste(output_maps,"events_drought_map.png"), width = 6, height = 4.5, type = "cairo-png")
events_drought_mapa <- ggDaveismMapAuto(states, counties, counties$drought_eventsa, "Drought Average Last 10 Years", "", source_noaa)
ggsave(events_drought_mapa, file = paste(output_maps,"events_drought_mapa.png"), width = 6, height = 4.5, type = "cairo-png")

events_flash_map <- ggDaveismMapAuto(states, counties, counties$flash_events, "Flash Flood Events Last 10 Years", "", source_noaa)
ggsave(events_flash__map, file = paste(output_maps,"events_flash_map.png"), width = 6, height = 4.5, type = "cairo-png")
events_flash_mapa <- ggDaveismMapAuto(states, counties, counties$flash_eventsa, "Flash Flood Average Last 10 Years", "", source_noaa)
ggsave(events_flash_mapa, file = paste(output_maps,"events_flash_mapa.png"), width = 6, height = 4.5, type = "cairo-png")

events_flood_map <- ggDaveismMapAuto(states, counties, counties$flood_events, "Flood Events Last 10 Years", "", source_noaa)
ggsave(events_flood_map, file = paste(output_maps,"events_flood_map.png"), width = 6, height = 4.5, type = "cairo-png")
events_flood_mapa <- ggDaveismMapAuto(states, counties, counties$flood_eventsa, "Flood Average Last 10 Years", "", source_noaa)
ggsave(events_flood_mapa, file = paste(output_maps,"events_flood_mapa.png"), width = 6, height = 4.5, type = "cairo-png")

events_heat_map <- ggDaveismMapAuto(states, counties, counties$heat_events, "Heat Events Last 10 Years", "", source_noaa)
ggsave(events_heat_map, file = paste(output_maps,"events_heat_map.png"), width = 6, height = 4.5, type = "cairo-png")
events_heat_mapa <- ggDaveismMapAuto(states, counties, counties$heat_eventsa, "Heat Average Last 10 Years", "", source_noaa)
ggsave(events_heat_mapa, file = paste(output_maps,"events_heat_mapa.png"), width = 6, height = 4.5, type = "cairo-png")

events_tornado_map <- ggDaveismMapAuto(states, counties, counties$tornado, "Tornados Last 10 Years", "", source_noaa)
ggsave(events_tornado_map, file = paste(output_maps,"events_tornado_map.png"), width = 6, height = 4.5, type = "cairo-png")
events_tornado_mapa <- ggDaveismMapAuto(states, counties, counties$tornadoa, "Tornados Average 10 Years", "", source_noaa)
ggsave(events_tornado_mapa, file = paste(output_maps,"events_tornado_mapa.png"), width = 6, height = 4.5, type = "cairo-png")

events_wildfire_map <- ggDaveismMapAuto(states, counties, counties$wildfire, "Wildfire Last 10 Years", "", source_noaa)
ggsave(events_wildfire_map, file = paste(output_maps,"events_wildfire_map.png"), width = 6, height = 4.5, type = "cairo-png")
events_wildfire_mapa <- ggDaveismMapAuto(states, counties, counties$wildfirea, "Wildfire Average 10 Years", "", source_noaa)
ggsave(events_wildfire_mapa, file = paste(output_maps,"events_wildfire_mapa.png"), width = 6, height = 4.5, type = "cairo-png")
