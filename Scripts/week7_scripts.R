fish_data <- read.csv("Data/Gaeta_etal_CLC_data.csv")

library(dplyr)
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))

#this creates a new table categorizing by fish size
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

#Get rid of scale lengths less than 1
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small")) %>%
  filter(scalelength > 1)

#scatterplot with length on the x-axis and scalelength on the y-axis, and colored points for lake id
library(tidyverse)
ggplot(fish_data, aes(x = length, y = scalelength, color = lakeid)) +
  geom_point()


library(tidyverse)
ggplot(fish_data, aes(x = length, y = scalelength, color = lakeid)) +
  geom_point()

#Plot histogram of scale length by fish categorical size
ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram(bins = 80) 
  
ggsave("scale_hist_by_length.jpg")

tyler



