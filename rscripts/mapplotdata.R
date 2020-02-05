#library for reading csv in R
install.packages("readr")
library(readr)

#adding names to columns
data_sample <- read_csv("sample_data_state.csv")
colnames(data_sample)=c("state","number","percent","state_code","X1","lat","lon")

#libraries for plotting data
install.packages("ggplot2")
install.packages("tidyverse")
install.packages("fiftystater")
library(ggplot2)
library(tidyverse)
library(fiftystater)

ggplot() + geom_polygon( data=fifty_states, aes(x=long, y=lat, group = group),color="white", fill="grey10" )
ggplot() + geom_polygon(data=fifty_states, aes(x=long, y=lat, group = group),color="white", fill="grey92" ) + 
  geom_point(data=data_sample, aes(x=lon, y=lat, size = number), color="black") + 
  scale_size(name="", range = c(2, 20)) + 
  guides(size=guide_legend("Sample State Data Plot")) +
  theme_void()
