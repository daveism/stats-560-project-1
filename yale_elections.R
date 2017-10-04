
#############################
#elections and yale
#############################

#happening gop
happening_gop_chart <- ggScatter(yale_election_merge,
              yale_election_merge$happening,
              yale_election_merge$per_gop,
              "lm",
              "Believe and GOP",
              "precent believe",
              "percent GOP",
              0,
              100,
              paste(source_yale, source_tonmcg,sep = " and "))

ggsave(paste(output_charts,"happening_gop_chart.png"), happening_gop_chart, width=4, height=3)
cor(yale_election_merge$happening,yale_election_merge$per_gop,use = "complete.obs")

#happening dem
happening_dem_chart <- ggScatter(yale_election_merge,
              yale_election_merge$happening,
              yale_election_merge$per_dem,
              "lm",
              "Believe and Democrat",
              "precent believe",
              "precent Democrat",
              0,
              100,
              paste(source_yale, source_tonmcg,sep = " and "))

ggsave(paste(output_charts,"happening_dem_chart.png"), happening_dem_chart, width=4, height=3)
cor(yale_election_merge$happening,yale_election_merge$per_dem,use = "complete.obs")

#personal gop
personal_gop_chart <- ggScatter(yale_election_merge,
              yale_election_merge$personal,
              yale_election_merge$per_gop,
              "lm",
              "Harm me and GOP",
              "precent harm me",
              "percent GOP",
              0,
              100,
              paste(source_yale, source_tonmcg,sep = " and "))

ggsave(paste(output_charts,"harm_me_gop_chart.png"), personal_gop_chart, width=4, height=3)
cor(yale_election_merge$personal,yale_election_merge$per_gop,use = "complete.obs")

#personal dem
personal_dem_chart <- ggScatter(yale_election_merge,
              yale_election_merge$personal,
              yale_election_merge$per_dem,
              "lm",
              "Harm me and Democrat",
              "precent harm me",
              "percent Democrat",
              0,
              100,
              paste(source_yale, source_tonmcg,sep = " and "))

ggsave(paste(output_charts,"harm_me_dem_chart.png"), personal_dem_chart, width=4, height=3)
cor(yale_election_merge$personal,yale_election_merge$per_dem,use = "complete.obs")

#timing gop
timing_gop_chart <- ggScatter(yale_election_merge,
              yale_election_merge$timing,
              yale_election_merge$per_gop,
              "lm",
              "Harm others and GOP",
              "precent harm others",
              "percent GOP",
              0,
              100,
              paste(source_yale, source_tonmcg,sep = " and "))

ggsave(paste(output_charts,"timing_gop_chart.png"), timing_gop_chart, width=4, height=3)
cor(yale_election_merge$timing,yale_election_merge$per_gop,use = "complete.obs")

#timing gop smaller test
timing_gop_chartDoc <- ggScatterDoc(yale_election_merge,
              yale_election_merge$timing,
              yale_election_merge$per_gop,
              "lm",
              "Harm others and GOP",
              "precent harm others",
              "percent GOP",
              0,
              100,
              paste(source_yale, source_tonmcg,sep = "\nand "))

ggsave(paste(output_charts,"timing_gop_chartDoc.png"), timing_gop_chartDoc, width=1, height=1)
cor(yale_election_merge$timing,yale_election_merge$per_gop,use = "complete.obs")

#timing dem
timing_dem_chart <- ggScatter(yale_election_merge,
              yale_election_merge$timing,
              yale_election_merge$per_dem,
              "lm",
              "Harm others and Democrat",
              "precent harm others",
              "percent Democrat",
              0,
              100,
              paste(source_yale, source_tonmcg,sep = " and "))

ggsave(paste(output_charts,"timing_dem_chart.png"), timing_dem_chart, width=4, height=3)
cor(yale_election_merge$timing,yale_election_merge$per_dem,use = "complete.obs")
