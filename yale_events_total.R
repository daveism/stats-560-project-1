
#############################
#yale and event scatter plots tot
#############################

#happening and tot3
happening_tot3_chart <- ggScatter(yale_merge_events,
              yale_merge_events$happening,
              yale_merge_events$total_3,
              "lm",
              "Believe and Total",
              "percent believe",
              "total",
              0,
              200,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"happening_tot3_chart.png"), happening_tot3_chart, width=4, height=3)
cor(yale_merge_events$happening,yale_merge_events$total_3,use = "complete.obs")

#personal and tot3
harm_me_tot3_chart <- ggScatter(yale_merge_events,
              yale_merge_events$personal,
              yale_merge_events$total_3,
              "lm",
              "Harm me and Total",
              "percent harm me",
              "total",
              0,
              200,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"harm_me_tot3_chart.png"), harm_me_tot3_chart, width=4, height=3)
cor(yale_merge_events$personal,yale_merge_events$total_3,use = "complete.obs")

#timing and tot3
timing_tot3_chart <- ggScatter(yale_merge_events,
              yale_merge_events$timing,
              yale_merge_events$total_3,
              "lm",
              "Harm others and Total",
              "percent harm others",
              "total",
              0,
              200,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"timing_tot3_chart.png"), timing_tot3_chart, width=4, height=3)
cor(yale_merge_events$timing,yale_merge_events$total_3,use = "complete.obs")

#happening and drought
happening_droughts_tot3_chart <- ggScatter(Drought_events,
              Drought_events$happening,
              Drought_events$total_3,
              "lm",
              "Believe and Total (Drought)",
              "percent believe",
              "total",
              0,
              50,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"happening_droughts_tot3_chart.png"), happening_droughts_tot3_chart, width=4, height=3)
cor(Drought_events$happening,Drought_events$total_3,use = "complete.obs")

#harm me and drought
harm_me_droughts_tot3_chart <- ggScatter(Drought_events,
              Drought_events$personal,
              Drought_events$total_3,
              "lm",
              "Harm me and Total (Drought)",
              "percent harm me",
              "total droughts 3 years",
              0,
              50,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"harm_me_droughts_tot3_chart.png"), harm_me_droughts_tot3_chart, width=4, height=3)
cor(Drought_events$personal,Drought_events$total_3,use = "complete.obs")

#timing and drought
timing_droughts_tot3_chart <- ggScatter(Drought_events,
              Drought_events$timing,
              Drought_events$total_3,
              "lm",
              "Harm Others and Total (Drought)",
              "percent harm Others",
              "total",
              0,
              50,
              paste(source_yale,source_noaa,sep = " and "))

ggsave(paste(output_charts,"timing_droughts_tot3_chart.png"), timing_droughts_tot3_chart, width=4, height=3)
cor(Drought_events$timing,Drought_events$total_3,use = "complete.obs")
