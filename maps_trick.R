#############################
#maps trick
#############################
#personal
greater40 <- subset(counties_yale_map, as.numeric(counties_yale_map$personal) >= 40)
greater40$trickmap1value = 100

less40 <- subset(counties_yale_map, as.numeric(counties_yale_map$personal) < 40)
less40$trickmap1value = 0

trickdata1 <- rbind(less40,greater40)
counties$trickmap1value <- trickdata1$trickmap1value[match(counties$yale_match, trickdata1$yale_match)]

trick_map_1 <- ggDaveismMapAutoBreaksNoLegend(states, counties, counties$trickmap1value, "", "", source_yale,2)
ggsave(trick_map_1, file = paste(output_maps,"trick_map_1.png"), width = 6, height = 4.5, type = "cairo-png")

#per_gop
greater50 <- subset(yale_election_merge, as.numeric(yale_election_merge$per_gop) >= 50)
greater50$trickmap2value = 0

less50 <- subset(yale_election_merge, as.numeric(yale_election_merge$per_gop) < 50)
less50$trickmap2value = 100

trickdata2 <- rbind(less50,greater50)
counties$trickmap2value <- trickdata2$trickmap2value[match(counties$yale_match, trickdata2$yale_match)]

trick_map_2 <- ggDaveismMapAutoBreaksNoLegend(states, counties, counties$trickmap2value, "", "", source_yale,2)
ggsave(trick_map_2, file = paste(output_maps,"trick_map_2.png"), width = 6, height = 4.5, type = "cairo-png")
