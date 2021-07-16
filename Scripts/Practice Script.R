###Practice Script
library(tidyverse)
library(ggplot2)

data <- read.csv("Data/benthic_invertebrates_univariate.csv")
colnames(data)

plot <- ggplot(data, aes(x = Depth, y = abundance)) +
  geom_point()
plot

ggsave("Figures/scatter_abundance.jpeg",
       plot,
       height = 7.21,
         width= 7.52,
         units = "in",
       dpi = 500)
