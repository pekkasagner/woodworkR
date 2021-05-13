library(tidyverse)

test <- tibble(x = 1:10, y = 1:10)

woodworkR_palette_names <- c("ebony", "wenge", "walnut",
                             "whiteoak", "pine", "cedar", "mahogany", 
                             "beech", "teak", "redwood")
woodworkR_palette <- c("#2c3227", "#645452", "#6c3f19", 
                       "#ce9f6f", "#deccba", "#a1655b", "#c04000", 
                       "#f3b164", "#aa6d37", "#5F3730")

test %>% 
          ggplot(aes(x, y, color = factor(y))) +
          geom_point(size = 10) +
          scale_color_manual(values = woodworkR_palette)
