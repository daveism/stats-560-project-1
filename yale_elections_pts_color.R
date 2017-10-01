
#############################
#elections and yale
#############################

#happening gop
happening_gop_chart <- ggScatterPt(yale_election_merge,
              yale_election_merge$happening,
              yale_election_merge$per_gop,
              "lm",
              "Believe and GOP",
              "believe",
              "percent GOP",
              0,
              100,
              yale_election_merge$per_gop,
              "percent GOP",
              paste(source_yale, source_tonmcg,sep = " and "))

ggsave(paste(output_charts,"happening_gop_chart_pts.png"), happening_gop_chart, width=4, height=3)
cor(yale_election_merge$happening,yale_election_merge$per_gop,use = "complete.obs")

#happening dem
happening_dem_chart <- ggScatterPt(yale_election_merge,
              yale_election_merge$happening,
              yale_election_merge$per_dem,
              "lm",
              "Believe and Democrat",
              "believe",
              "precent Democrat",
              0,
              100,
              yale_election_merge$per_dem,
              "percent Democrat",
              paste(source_yale, source_tonmcg,sep = " and "))

ggsave(paste(output_charts,"happening_dem_chart_pts.png"), happening_dem_chart, width=4, height=3)
cor(yale_election_merge$happening,yale_election_merge$per_dem,use = "complete.obs")

#personal gop
personal_gop_chart <- ggScatterPt(yale_election_merge,
              yale_election_merge$personal,
              yale_election_merge$per_gop,
              "lm",
              "Harm me and GOP",
              "harm me",
              "percent GOP",
              0,
              100,
              yale_election_merge$per_gop,
              "percent GOP",
              paste(source_yale, source_tonmcg,sep = " and "))

ggsave(paste(output_charts,"harm_me_gop_chart_pts.png"), personal_gop_chart, width=4, height=3)
cor(yale_election_merge$personal,yale_election_merge$per_gop,use = "complete.obs")

#personal dem
personal_dem_chart <- ggScatterPt(yale_election_merge,
              yale_election_merge$personal,
              yale_election_merge$per_dem,
              "lm",
              "Harm me and Democrat",
              "harm me",
              "percent Democrat",
              0,
              100,
              yale_election_merge$per_dem,
              "percent Democrat",
              paste(source_yale, source_tonmcg,sep = " and "))

ggsave(paste(output_charts,"harm_me_dem_chart_pts.png"), personal_dem_chart, width=4, height=3)
cor(yale_election_merge$personal,yale_election_merge$per_dem,use = "complete.obs")

#timing gop
timing_gop_chart <- ggScatterPt(yale_election_merge,
              yale_election_merge$timing,
              yale_election_merge$per_gop,
              "lm",
              "Harm others and GOP",
              "Harm others",
              "percent GOP",
              0,
              100,
              yale_election_merge$per_gop,
              "percent GOP",
              paste(source_yale, source_tonmcg,sep = " and "))

ggsave(paste(output_charts,"timing_gop_chart_pts.png"), timing_gop_chart, width=4, height=3)
cor(yale_election_merge$timing,yale_election_merge$per_gop,use = "complete.obs")

#timing dem
timing_dem_chart <- ggScatterPt(yale_election_merge,
              yale_election_merge$timing,
              yale_election_merge$per_dem,
              "lm",
              "Harm others and Democrat",
              "timing",
              "percent Democrat",
              0,
              100,
              yale_election_merge$per_dem,
              "percent Democrat",
              paste(source_yale, source_tonmcg,sep = " and "))

ggsave(paste(output_charts,"timing_dem_chart_pts.png"), timing_dem_chart, width=4, height=3)
cor(yale_election_merge$timing,yale_election_merge$per_dem,use = "complete.obs")
