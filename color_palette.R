library(tidyverse)

test <- tibble(x = 1:9, y = 1:9)

woodworkR_palette_names <- c("ebony", "wenge", "walnut", "redwood", 
                             "whiteoak", "cedar", "pine", "mahogany", 
                             "beech", "teak")
woodworkR_palette <- c("#2c3227", "#645452", "#6c3f19", "#5F3730", 
                       "#ce9f6f", "#a1655b", "#deccba", "#c04000", 
                       "#f3b164", "#aa6d37")

test %>% 
          ggplot(aes(x, y, color = factor(y))) +
          geom_point(size = 10) +
          scale_color_manual(values = woodworkR_palette)
