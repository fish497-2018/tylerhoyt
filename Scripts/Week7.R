fish_data <- read.csv("Data/Gaeta_etal_CLC_data.csv")

library(dplyr)
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))

#this creates a new table categorizing by fish size
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))


fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small")) %>%
  filter(scalelength > 1)

library(tidyverse)
ggplot(fish_data, aes(x = scalelength, fill = length_cat, color = lakeid)) +
  geom_histogram()


