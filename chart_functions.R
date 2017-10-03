
#############################
#graphing functions
#############################
ggHours <- function(data, dataname, title, source){
  ggplot(data, aes(x = dataname)) +
  geom_histogram(stat = "bin", fill="grey", color="dark grey", bins=24) +
  theme_minimal(base_size=9) +
  labs(title= paste(title, "by Hour 1950-2017"),
      subtitle="",
      x="Time",
      y="Number of events",
      caption=paste("Source:",source)) +
      theme(plot.subtitle = element_text(color="#666666"),
            plot.caption = element_text(color="#AAAAAA", size=6))
  }


ggScatter <-  function(data, xField, yField, method, title,
                       xLabel, yLabel, lowerlimit, upperlimit, source){

  m <- lm(yField ~ xField, data);
  r2 <- format(summary(m)$r.squared, digits = 3)
  pearsons <- format(cor(xField, yField, use = "complete.obs"), digits = 3)

  ggplot(data, aes(x = xField, y = yField)) +
  geom_point(color="#b2ddf2") +
  geom_smooth(method = method,color="#008fd5",se=0) +
  theme_minimal(base_size=9) +
  coord_cartesian(ylim = c(lowerlimit, upperlimit)) +
  labs(title= paste(title),
     subtitle=paste(paste(paste("R-squared = ",r2),", Pearsons:"),pearsons),
     x=xLabel,
     y=yLabel,
     caption=paste("Source:",source)) +
     theme(plot.subtitle = element_text(color="#666666"),
          plot.caption = element_text(color="#AAAAAA", size=6))
}

ggScatterSm <-  function(data, xField, yField, method, title,
                       xLabel, yLabel, lowerlimit, upperlimit, source){

  m <- lm(yField ~ xField, data);
  r2 <- format(summary(m)$r.squared, digits = 3)
  pearsons <- format(cor(xField, yField, use = "complete.obs"), digits = 3)

  ggplot(data, aes(x = xField, y = yField)) +
  geom_point(color="#b2ddf2") +
  geom_smooth(method = method,color="#008fd5",se=0) +
  theme_minimal(base_size=6) +
  coord_cartesian(ylim = c(lowerlimit, upperlimit)) +
  labs(title= paste(title),
     subtitle=paste(paste(paste("R-squared = ",r2),", Pearsons:"),pearsons),
     x=xLabel,
     y=yLabel,
     caption=paste("Source:",source)) +
     theme(plot.subtitle = element_text(color="#666666"),
          plot.caption = element_text(color="#AAAAAA", size=5))
}


ggScatterPt <-  function(data, xField, yField, method, title,
                       xLabel, yLabel, lowerlimit, upperlimit, pt_name,
                       pt_title, source){

  m <- lm(yField ~ xField, data);
  r2 <- format(summary(m)$r.squared, digits = 3)
  pearsons <- format(cor(xField, yField, use = "complete.obs"), digits = 3)

  ggplot(data, aes(x = xField, y = yField)) +
  geom_point(aes(color = pt_name)) +
  labs(colour=pt_title) +
  geom_smooth(method = method,color="#008fd5",se=0) +
  theme_minimal(base_size=9) +
  coord_cartesian(ylim = c(lowerlimit, upperlimit)) +
  labs(title= paste(title),
     subtitle=paste(paste(paste("R-squared = ",r2),", Pearsons:"),pearsons),
     x=xLabel,
     y=yLabel,
     caption=paste("Source:",source)) +
     theme(plot.subtitle = element_text(color="#666666"),
          plot.caption = element_text(color="#AAAAAA", size=6))
}

ggScatterTotals <-  function(data, xField, yField, method, title,
                       xLabel, yLabel, lowerlimit, upperlimit, source){

   max_value <- max(unlist(yField), na.rm = TRUE)
   min_value <- min(unlist(yField), na.rm = TRUE)

  m <- lm(yField ~ xField, data);
  r2 <- format(summary(m)$r.squared, digits = 3)
  pearsons <- format(cor(xField, yField, use = "complete.obs"), digits = 3)

  ggplot(data, aes(x = xField, y = yField)) +
  geom_point(color="#b2ddf2") +
  geom_smooth(method = method,color="#008fd5",se=0) +
  theme_minimal(base_size=9) +
  coord_cartesian(ylim = c(min_value, max_value)) +
  labs(title= paste(title),
     subtitle=paste(paste(paste("R-squared = ",r2),", Pearsons:"),pearsons),
     x=xLabel,
     y=yLabel,
     caption=paste("Source:",source)) +
     theme(plot.subtitle = element_text(color="#666666"),
          plot.caption = element_text(color="#AAAAAA", size=6))
}


ggYear <- function(data, dataname, years, source){
ggplot(data, aes(x = dataname)) +
geom_histogram(stat = "bin", fill="grey", color="dark grey", bins=years) +
theme_minimal(base_size=9) +
 labs(title= paste("Events by Year 1950-2017"),
      subtitle="",
      x="Year",
      y="Number of events",
      caption=paste("Source:",source)) +
      theme(plot.subtitle = element_text(color="#666666"),
               plot.caption = element_text(color="#AAAAAA", size=6))
}

ggYearFac <- function(data, dataname, years, facet_name, source){
  ggplot(data, aes(x = dataname)) +
  geom_histogram(stat = "bin", fill="grey", color="dark grey", bins=years) +
  theme_minimal(base_size=9) +
  labs(title= paste("Events by Year 1950-2017"),
        subtitle="",
        x="Year",
        y="Number of events",
        caption=paste("Source:",source)) +
        theme(plot.subtitle = element_text(color="#666666"),
                 plot.caption = element_text(color="#AAAAAA", size=6))+
  facet_wrap(reformulate(facet_name), ncol = 5)
}

ggScatterDigfac2 <-  function(data, xField, yField, xlabel, ylabel, title, facet_name, source){
  ggplot(data, aes(x = xField, y = yField)) +
  geom_point(color="#b2ddf2") +
  geom_smooth(method = 'lm',color="#008fd5",se=0) +
  ggtitle(title) +theme_minimal(base_size=9) + coord_cartesian(ylim = c(0, 200)) +
  labs(title= paste(title),
        subtitle="",
        x=xlabel,
        y=ylabel,
        caption=paste("Source:",source)) +
        theme(plot.subtitle = element_text(color="#666666"),
                 plot.caption = element_text(color="#AAAAAA", size=6))+
  facet_wrap(reformulate(facet_name), ncol = 3)
}
