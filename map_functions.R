
#############################
#maping functions
#############################

ggDaveismMapAuto <- function(states, data, datafield, title, subtitle, source){

    ditch_the_axes <- theme(
      axis.text = element_blank(),
      axis.line = element_blank(),
      axis.ticks = element_blank(),
      panel.border = element_blank(),
      panel.grid = element_blank(),
      axis.title = element_blank()
      )

    us_base <- ggplot(data = states, mapping = aes(x = long, y = lat, group = group)) +
               coord_fixed(1.3) +
               theme_minimal(base_size=9) +
               geom_polygon(color = "black", fill = "gray",na.rm = TRUE)

      event_map <- us_base +
      geom_polygon(data = data,
        aes(fill = datafield),
        colour = "white",
        size = .05
      ) +
      scale_fill_distiller(name="",
                           palette = "RdBu",
                           breaks = pretty_breaks(n = 10)
                          #  ,
                          #  colour = "white",
                          #  size = .05
                         )+
      geom_polygon(color = "black", fill = NA ) +
      guides(fill = guide_colorbar(barwidth = .5, barheight = 15, ticks = FALSE, nbin=100)) +
      geom_polygon(colour = "black", fill = NA) +
      theme( legend.position="right",axis.text=element_text(size = 6)) +
      ditch_the_axes +
      labs(title= title,
           subtitle=subtitle,
           caption=paste("Source:",source)) +
      theme(plot.subtitle = element_text(color="#666666"),
                    plot.caption = element_text(color="#AAAAAA", size=6)) +
                    scale_color_manual(name = "Year", # or name = element_blank()
                      labels = c(1940, 1960),
                      values = colors)
     return(event_map)
    }


    ggDaveismMap <- function(states, counties, data, datafield, title, subtitle, source){

        data$mapvalue <- round_any(datafield, 10) #as.numeric(substr(datafield,0,1))*10

        ditch_the_axes <- theme(
          axis.text = element_blank(),
          axis.line = element_blank(),
          axis.ticks = element_blank(),
          panel.border = element_blank(),
          panel.grid = element_blank(),
          axis.title = element_blank()
          )

        us_base <- ggplot(data = states, mapping = aes(x = long, y = lat, group = group)) +
                   coord_fixed(1.3) +
                   theme_minimal(base_size=9) +
                   geom_polygon(color = "black", fill = "gray")

        max_value <- max(unlist(datafield), na.rm = TRUE)
        min_value <- min(unlist(datafield), na.rm = TRUE)
        mean_value <- mean(datafield, na.rm = TRUE)
        my_colors_RdYlGn <- c("#a50026","#d73027","#f46d43","#fdae61","#fee08b","#d9ef8b","#a6d96a","#66bd63","#1a9850","#00683")
        my_colors_RdBu <- c('#67001f','#b2182b','#d6604d','#f4a582','#fddbc7','#d1e5f0','#92c5de','#4393c3','#2166ac','#053061')
        my_colors_RdYlBu <- c("#a50026","#d73027","#f46d43","#fdae61","#fee090","#e0f3f8","#abd9e9","#74add1","#4575b4","#313695")
        my_colors_RdYlBu_spec <- c('#9e0142','#d53e4f','#f46d43','#fdae61','#fee08b','#e6f598','#abdda4','#66c2a5','#3288bd','#5e4fa2')
        nyt <- c("#367b7f","#367b7f","#60999e","#8db8be","#bed6db", "#fcc8a0","#f29d69","#e0713e","#c94227","#c94227")
        my_colors <- nyt
        max_color <-my_colors[10-as.numeric(substr(max_value,0,1))]
        min_color <- my_colors[10-as.numeric(substr(min_value,0,1))]
        mid_color <- my_colors[10-as.numeric(substr(mean_value,0,1))]

        min_color <- "#367b7f" #my_colors[2]
        mid_color <- "#ddcfbe" #my_colors[5]
        max_color <- "#c94227" #my_colors[9]

        cols <- c(
              "0" = "#367b7f",
              "10" = "#4B8A8E",
              "20" = "#60999e",
              "30" = "#8db8be",
              "40" = "#bed6db",
              "50" = "#fcc8a0",
              "60" = "#f29d69",
              "70" = "#e0713e",
              "80" = "#D86136",
              "90" = "#D0512E",
              "100" = "#c94227"
            )

          event_map <- us_base +
          geom_polygon(data = data,
                       aes(fill = as.factor(data$mapvalue)),
                       colour = "white",
                       size = .05
                     ) +
          scale_fill_manual(values = cols) +
          geom_polygon(color = "black", fill = NA) +
          guides( fill = guide_legend( title = NULL ) )  +
          geom_polygon(color = "black", fill = NA) +
          theme( legend.position="right",
                  axis.text=element_text(size = 6),
                  legend.key.height=unit(1.2,"line"),
                  legend.key.width=unit(.6,"line"),
                ) +
          ditch_the_axes +
          labs(title= title,
               subtitle=subtitle,
               caption=paste("Source:",source)) +
          theme(plot.subtitle = element_text(color="#666666"),
                        plot.caption = element_text(color="#AAAAAA", size=6))


         return(event_map)
        }

ggDaveismMapAutoBreaks <- function(states, data, datafield, title, subtitle, source, nbreaks){

  ditch_the_axes <- theme(
    axis.text = element_blank(),
    axis.line = element_blank(),
    axis.ticks = element_blank(),
    panel.border = element_blank(),
    panel.grid = element_blank(),
    axis.title = element_blank()
    )

  us_base <- ggplot(data = states, mapping = aes(x = long, y = lat, group = group)) +
             coord_fixed(1.3) +
             theme_minimal(base_size=9) +
             geom_polygon(color = "black", fill = "gray",na.rm = TRUE)

    event_map <- us_base +
    geom_polygon(data = data,
      aes(fill = datafield),
      colour = "white",
      size = .05
    ) +
    scale_fill_distiller(name="",
                         palette = "RdBu",
                         breaks = pretty_breaks(n = nbreaks)
                        #  ,
                        #  colour = "white",
                        #  size = .05
                       )+
    geom_polygon(color = "black", fill = NA ) +
    guides(fill = guide_colorbar(barwidth = .5, barheight = 15, ticks = FALSE, nbin=100)) +
    geom_polygon(colour = "black", fill = NA) +
    theme( legend.position="right",axis.text=element_text(size = 6)) +
    ditch_the_axes +
    labs(title= title,
         subtitle=subtitle,
         caption=paste("Source:",source)) +
    theme(plot.subtitle = element_text(color="#666666"),
                  plot.caption = element_text(color="#AAAAAA", size=6)) +
                  scale_color_manual(name = "Year", # or name = element_blank()
                    labels = c(1940, 1960),
                    values = colors)
   return(event_map)
  }

  ggDaveismMapAutoBreaksNoLegend <- function(states, data, datafield, title, subtitle, source, nbreaks){

    ditch_the_axes <- theme(
      axis.text = element_blank(),
      axis.line = element_blank(),
      axis.ticks = element_blank(),
      panel.border = element_blank(),
      panel.grid = element_blank(),
      axis.title = element_blank()
      )

    us_base <- ggplot(data = states, mapping = aes(x = long, y = lat, group = group)) +
               coord_fixed(1.3) +
               theme_minimal(base_size=9) +
               geom_polygon(color = "black", fill = "gray",na.rm = TRUE)

      event_map <- us_base +
      geom_polygon(data = data,
        aes(fill = datafield),
        colour = "white",
        size = .05
      ) +
      scale_fill_distiller(name="",
                           palette = "RdBu",
                           breaks = pretty_breaks(n = nbreaks)
                          #  ,
                          #  colour = "white",
                          #  size = .05
                         )+
      geom_polygon(color = "black", fill = NA ) +
      guides(fill = FALSE) +
      geom_polygon(colour = "black", fill = NA) +
      theme( legend.position="right",axis.text=element_text(size = 6)) +
      ditch_the_axes +
      labs(title= title,
           subtitle=subtitle,
           caption=paste("Source:",source)) +
      theme(plot.subtitle = element_text(color="#666666"),
                    plot.caption = element_text(color="#AAAAAA", size=6)) +
                    scale_color_manual(name = "Year", # or name = element_blank()
                      labels = c(1940, 1960),
                      values = colors)
     return(event_map)
    }
