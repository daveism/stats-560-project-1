#############################
#libraries
# note: you may need to install these packages first
#############################

library(ggplot2)
library(scales)
library(ggthemes)
library(ggmap)
library(maps)
library(mapdata)
library(rgdal)
library(scales)
library(dplyr)
library(maptools)
library(plyr)
library(rgeos)
library(extrafont)
library(showtext)
options(scipen = 999)

#############################
#sources
#############################
source_noaa <- "NOAA Storm Events database"
source_yale <- "Yale Program on Climate Change"
source_tonmcg <- "https://github.com/tonmcg/"

#############################
#inputs
#############################
intput_data <- "/Users/daveism/GitHub/stats-560-project-1/data/source"
shapefiles <- "/Users/daveism/GitHub/stats-560-project-1/data/shapefiles"

#############################
#outputs
#############################
output_charts <- "/Users/daveism/GitHub/stats-560-project-1/charts/"
output_maps <- "/Users/daveism/GitHub/stats-560-project-1/maps/"
output_data <- "/Users/daveism/GitHub/stats-560-project-1/data/"
