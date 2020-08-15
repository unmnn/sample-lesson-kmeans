# Your Turn

# Run K-means clustering on the Palmer penguins data with K=3. 
# Instead of initializing the centroids randomly, use to provided custom coordinates. 
# Return the number of observations for each cluster.

# remotes::install_github("allisonhorst/palmerpenguins")
library(dplyr)
library(tidyr)
library(palmerpenguins)

# Prepare 2-dimensional data for clustering
df <- penguins %>% 
  select(bill_length_mm, bill_depth_mm) %>% 
  drop_na()

# Run K-means clustering using custom initial centroids
clustering <- kmeans(_____, 
                          _____ = tibble(
                            bill_length_mm = c(40, 50, 60), 
                            bill_depth_mm = c(15, 18, 21)
                          )
)
clustering

# Return cluster sizes
clustering$_____
```