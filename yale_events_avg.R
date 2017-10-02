
#############################
#yale and event scatter plots avg
#############################

#happening and avg3
happening_avg3_chart <- ggScatter(yale_merge_events,
              yale_merge_events$happening,
              yale_merge_events$avg_3,
              "lm",
              "Believe and Average",
              "percent believe",
              "average",
              0,
              70,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"happening_avg3_chart.png"), happening_avg3_chart, width=4, height=3)
cor(yale_merge_events$happening,yale_merge_events$avg_3,use = "complete.obs")

#personal and avg3
harm_me_avg3_chart <- ggScatter(yale_merge_events,
              yale_merge_events$personal,
              yale_merge_events$avg_3,
              "lm",
              "Harm me and Average",
              "percent harm me",
              "average",
              0,
              70,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"harm_me_avg3_chart.png"), harm_me_avg3_chart, width=4, height=3)
cor(yale_merge_events$personal,yale_merge_events$avg_3,use = "complete.obs")

#timing and avg3
timing_avg3_chart <- ggScatter(yale_merge_events,
              yale_merge_events$timing,
              yale_merge_events$avg_3,
              "lm",
              "Harm others and Average",
              "percent harm others",
              "average",
              0,
              70,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"timing_avg3_chart.png"), timing_avg3_chart, width=4, height=3)
cor(yale_merge_events$timing,yale_merge_events$avg_3,use = "complete.obs")

#happening and drought
happening_droughts_avg3_chart <- ggScatter(Drought_events,
              Drought_events$happening,
              Drought_events$avg_3,
              "lm",
              "Believe and Average (Drought)",
              "percent believe",
              "average",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"happening_droughts_avg3_chart.png"), happening_droughts_avg3_chart, width=4, height=3)
cor(Drought_events$happening,Drought_events$avg_3,use = "complete.obs")

#harm me and drought
harm_me_droughts_avg3_chart <- ggScatter(Drought_events,
              Drought_events$personal,
              Drought_events$avg_3,
              "lm",
              "Harm me and Average (Drought)",
              "percent harm me",
              "average droughts 3 years",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"harm_me_droughts_avg3_chart.png"), harm_me_droughts_avg3_chart, width=4, height=3)
cor(Drought_events$personal,Drought_events$avg_3,use = "complete.obs")

#timing and drought
timing_droughts_avg3_chart <- ggScatter(Drought_events,
              Drought_events$timing,
              Drought_events$avg_3,
              "lm",
              "Harm Others and Average (Drought)",
              "percent harm Others",
              "average",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"timing_droughts_avg3_chart.png"), timing_droughts_avg3_chart, width=4, height=3)
cor(Drought_events$timing,Drought_events$avg_3,use = "complete.obs")


#happening and avg3
happening_avg3_chart <- ggScatter(yale_merge_events,
              yale_merge_events$happening,
              yale_merge_events$avg_3,
              "lm",
              "Believe and Average",
              "percent believe",
              "average",
              0,
              70,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"happening_avg3_chart.png"), happening_avg3_chart, width=4, height=3)
cor(yale_merge_events$happening,yale_merge_events$avg_3,use = "complete.obs")

#personal and avg3
harm_me_avg3_chart <- ggScatter(yale_merge_events,
              yale_merge_events$personal,
              yale_merge_events$avg_3,
              "lm",
              "Harm me and Average",
              "percent harm me",
              "average",
              0,
              70,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"harm_me_avg3_chart.png"), harm_me_avg3_chart, width=4, height=3)
cor(yale_merge_events$personal,yale_merge_events$avg_3,use = "complete.obs")

#timing and avg3
timing_avg3_chart <- ggScatter(yale_merge_events,
              yale_merge_events$timing,
              yale_merge_events$avg_3,
              "lm",
              "Harm others and Average",
              "percent harm others",
              "average",
              0,
              70,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"timing_avg3_chart.png"), timing_avg3_chart, width=4, height=3)
cor(yale_merge_events$timing,yale_merge_events$avg_3,use = "complete.obs")

#happening and drought
happening_droughts_avg3_chart <- ggScatter(Drought_events,
              Drought_events$happening,
              Drought_events$avg_3,
              "lm",
              "Believe and Average (Drought)",
              "percent believe",
              "average",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"happening_droughts_avg3_chart.png"), happening_droughts_avg3_chart, width=4, height=3)
cor(Drought_events$happening,Drought_events$avg_3,use = "complete.obs")

#harm me and drought
harm_me_droughts_avg3_chart <- ggScatter(Drought_events,
              Drought_events$personal,
              Drought_events$avg_3,
              "lm",
              "Harm me and Average (Drought)",
              "percent harm me",
              "average droughts 3 years",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"harm_me_droughts_avg3_chart.png"), harm_me_droughts_avg3_chart, width=4, height=3)
cor(Drought_events$personal,Drought_events$avg_3,use = "complete.obs")

#timing and drought
timing_droughts_avg3_chart <- ggScatter(Drought_events,
              Drought_events$timing,
              Drought_events$avg_3,
              "lm",
              "Harm Others and Average (Drought)",
              "percent harm Others",
              "average",
              0,
              20,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"timing_droughts_avg3_chart.png"), timing_droughts_avg3_chart, width=4, height=3)
cor(Drought_events$timing,Drought_events$avg_3,use = "complete.obs")
