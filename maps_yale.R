
#############################
#maps for yale
#############################


#############################
###add values to data for complete legend
#############################

counties_yaledata_add <- counties_yaledata
for(i in seq(from=0, to=100, by=10)) {
  blankrow <- counties_yaledata_add[nrow(counties_yaledata_add)+1,]
  blankrow$happening <- i
  blankrow$timing <- i
  blankrow$personal <- i
  blankrow$discuss <- i
  blankrow$yale_match <- "BLANK"

  counties_yaledata_add <- rbind(counties_yaledata_add,blankrow)
}

counties_yale_map <- merge(x = counties, y=counties_yaledata_add, by=c("yale_match") , all.x = TRUE)
counties_yale_map$mapvalue <- as.numeric(substr(counties_yale_map$happening,0,1))*10

happening_map <- ggDaveismMap(states, counties, counties_yale_map, counties_yale_map$happening, "Believe Global Warming is Happening", "", source_yale)
ggsave(happening_map, file = paste(output_maps,"happening_map.png"), width = 6, height = 4.5, type = "cairo-png")

timing_map <- ggDaveismMap(states, counties, counties_yale_map, counties_yale_map$timing, "Believe Global Warming will Harm others", "", source_yale)
ggsave(timing_map, file = paste(output_maps,"timing_map.png"), width = 6, height = 4.5, type = "cairo-png")

personal_map <- ggDaveismMap(states, counties, counties_yale_map, counties_yale_map$personal, "Believe Global Warming will Harm me", "", source_yale)
ggsave(personal_map, file = paste(output_maps,"personal.png"), width = 6, height = 4.5, type = "cairo-png")

discuss_map <- ggDaveismMap(states, counties, counties_yale_map, counties_yale_map$discuss, "Discuss", "", source_yale)
ggsave(discuss_map, file = paste(output_maps,"discuss_map.png"), width = 6, height = 4.5, type = "cairo-png")
