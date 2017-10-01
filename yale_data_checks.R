
#############################
#scatter plots for yale data
#happening and personal
#############################
happening_harm_me_chart <- ggScatter(counties_yaledata,
              counties_yaledata$happening,
              counties_yaledata$personal,
              "lm",
              "Believe and Harm me",
              "believe",
              "harm me",
              20,
              60,
              source_yale)

ggsave(paste(output_charts,"happening_harm_me_chart.png"), happening_harm_me_chart, width=4, height=3)
cor(counties_yaledata$happening,counties_yaledata$personal)

#happening and timing
happening_timing_chart <- ggScatter(counties_yaledata,
              counties_yaledata$happening,
              counties_yaledata$timing,
              "lm",
              "Believe and Harm others",
              "believe",
              "harm others",
              30,
              70,
              source_yale)

ggsave(paste(output_charts,"happening_timing_chart.png"), happening_timing_chart, width=4, height=3)
cor(counties_yaledata$happening,counties_yaledata$timing)

#personal and timing
harm_timing_chart <- ggScatter(counties_yaledata,
              counties_yaledata$personal,
              counties_yaledata$timing,
              "lm",
              "Harm me and Harm others",
              "harm me",
              "harm others",
              20,
              70,
              source_yale)

ggsave(paste(output_charts,"harm_me_timing_chart.png"), harm_timing_chart, width=4, height=3)
cor(counties_yaledata$personal,counties_yaledata$timing)
