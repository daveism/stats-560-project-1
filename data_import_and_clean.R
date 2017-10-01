
counties = readOGR(dsn=shapefiles, layer="counties_84")
counties@data$id <- rownames(counties@data)
counties.points = fortify(counties, region="id")
counties <- join(counties.points, counties@data, by="id")

states = readOGR(dsn=shapefiles, layer="states_84")
states@data$id <- rownames(states@data)
states.points = fortify(states, region="id")
states <- join(states.points, states@data, by="id")

counties_yaledata <- read.csv(file.path(intput_data,"yaledata_counties.csv"))
counties_events <-read.csv(file.path(intput_data,"events_data.csv"))
counties_events_last3 <- subset(counties_events, counties_events$year >= 2014 & counties_events$year <= 2016)
counties_events_last10 <- subset(counties_events, counties_events$year >= 2007 & counties_events$year <= 2016)
counties_election_2016 <- read.csv("https://raw.githubusercontent.com/tonmcg/County_Level_Election_Results_12-16/master/2016_US_County_Level_Presidential_Results.csv")

colnames(counties_election_2016)[11] <- "matchfips"
colnames(counties_yaledata)[3] <- "matchfips"
colnames(counties_yaledata)[4] <- "yale_match"

count_3 <-  aggregate(x=counties_events_last3$event_type, by=list(counties_events_last3$yale_match,counties_events_last3$event_type,counties_events_last3$year),FUN = length)
colnames(count_3)[1] <- "yale_match"
colnames(count_3)[2] <- "event_type"
colnames(count_3)[3] <- "year"
colnames(count_3)[4] <- "total_events_3"
count_3$total_events_3  <- as.numeric(count_3$total_events_3)

avg_3 <- aggregate(x=count_3$total_events, by=list(count_3$yale_match,count_3$event_type),FUN=mean)
colnames(avg_3)[1] <- "yale_match"
colnames(avg_3)[2] <- "event_type"
colnames(avg_3)[3] <- "avg_3"
avg_3$avg_3  <- as.numeric(avg_3$avg_3)

diff_3 <- merge(x = count_3  , y=avg_3, by=c("yale_match","event_type") , all.x = TRUE)
diff_3$diff_last_3 <- diff_3$total_events_3 - diff_3$avg_3

sum_3 <- aggregate(x=count_3$total_events, by=list(count_3$yale_match,count_3$event_type),FUN=sum)
colnames(sum_3)[1] <- "yale_match"
colnames(sum_3)[2] <- "event_type"
colnames(sum_3)[3] <- "total_3"
sum_3$total_3  <- as.numeric(sum_3$total_3)

total_3 <- aggregate(x=list(counties_events_last3$damage_property_actual,
                              counties_events_last3$damage_crops_actual,
                              counties_events_last3$injuries_direct,
                              counties_events_last3$deaths_direct),
                        by=list(counties_events_last3$yale_match,
                                counties_events_last3$event_type),FUN=sum)
colnames(total_3)[1] <- "yale_match"
colnames(total_3)[2] <- "event_type"
colnames(total_3)[3] <- "total_property_3"
colnames(total_3)[4] <- "total_crops_3"
colnames(total_3)[5] <- "total_injuries_direct_3"
colnames(total_3)[6] <- "total_deaths_direct_3"


count_10 <-  aggregate(x=counties_events_last10$event_type, by=list(counties_events_last10$yale_match,counties_events_last10$event_type,counties_events_last10$year),FUN = length)
colnames(count_10)[1] <- "yale_match"
colnames(count_10)[2] <- "event_type"
colnames(count_10)[3] <- "year"
colnames(count_10)[4] <- "total_events_10"
count_10$total_events_10  <- as.numeric(count_10$total_events_10)

avg_10 <- aggregate(x=count_10$total_events, by=list(count_10$yale_match,count_10$event_type),FUN=mean)
colnames(avg_10)[1] <- "yale_match"
colnames(avg_10)[2] <- "event_type"
colnames(avg_10)[3] <- "avg_10"
avg_10$avg_10  <- as.numeric(avg_10$avg_10)

diff_10 <- merge(x = count_10  , y=avg_10, by=c("yale_match","event_type") , all.x = TRUE)
diff_10$diff_last_10 <- diff_10$total_events_10 - diff_10$avg_10

sum_10 <- aggregate(x=count_10$total_events, by=list(count_10$yale_match,count_10$event_type),FUN=sum)
colnames(sum_10)[1] <- "yale_match"
colnames(sum_10)[2] <- "event_type"
colnames(sum_10)[3] <- "total_10"
sum_10$total_10  <- as.numeric(sum_10$total_10)

total_10 <- aggregate(x=list(counties_events_last10$damage_property_actual,
                              counties_events_last10$damage_crops_actual,
                              counties_events_last10$injuries_direct,
                              counties_events_last10$deaths_direct),
                        by=list(counties_events_last10$yale_match,
                                counties_events_last10$event_type),FUN=sum)
colnames(total_10)[1] <- "yale_match"
colnames(total_10)[2] <- "event_type"
colnames(total_10)[3] <- "total_property_10"
colnames(total_10)[4] <- "total_crops_10"
colnames(total_10)[5] <- "total_injuries_direct_10"
colnames(total_10)[6] <- "total_deaths_direct_10"

yale_election_merge <- merge(x = counties_yaledata, y=counties_election_2016, by=c("matchfips") , all.x = TRUE)


last_3 <- merge(x = avg_3  , y=total_3, by=c("yale_match","event_type") , all.x = TRUE)
last_3 <- merge(x = last_3  , y=sum_3, by=c("yale_match","event_type") , all.x = TRUE)

last_10 <- merge(x = avg_10 , y=total_10, by=c("yale_match","event_type") , all.x = TRUE)
last_10 <- merge(x = last_10  , y=sum_10, by=c("yale_match","event_type") , all.x = TRUE)

last_events <- merge(x = last_10  , y=last_3, by=c("yale_match","event_type") , all.x = TRUE)

yale_merge_events <- merge(x = last_events, y=counties_yaledata, by=c("yale_match") , all.x = TRUE)

yale_merge_events_3years <- merge(x = diff_3, y=counties_yaledata, by=c("yale_match") , all.x = TRUE)
yale_merge_events_10years <- merge(x = diff_10, y=counties_yaledata, by=c("yale_match") , all.x = TRUE)


#############################
###elections fix yale to precents
#############################
yale_election_merge$per_gop <- yale_election_merge$per_gop * 100
yale_election_merge$per_dem <- yale_election_merge$per_dem * 100

#Other data
counties_ev <- merge(x = counties, y=last_events, by=c("yale_match") , all.x = TRUE)

countev_10 <- count(counties_events_last10, c('event_type'))
count_ev_10 <- arrange(countev_10,desc(freq))
top25_10 <- head(count_ev_10,25)
write.csv(top25_10,paste(output_data,"top25_10.csv"))

countev_3 <- count(counties_events_last3, c('event_type'))
count_ev_3 <- arrange(countev_3,desc(freq))
top25_3 <- head(count_ev_3,25)
write.csv(top25_3,paste(output_data,"top25_3.csv"))

#############################
