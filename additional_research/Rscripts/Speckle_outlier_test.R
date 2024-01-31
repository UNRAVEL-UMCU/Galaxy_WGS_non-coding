# Assuming you have loaded the required libraries and defined 'Speckle_data_cardio'
library(dplyr)

# Identify outliers based on speckle size
outliers <- boxplot.stats(Speckle_data_cardio$AreaShape_Area)$out

# Create a new dataset with non-outliers
filtered_data <- Speckle_data_cardio %>% filter(!AreaShape_Area %in% outliers)

# Print summary statistics
cat("Original dataset size:", nrow(Speckle_data_cardio), "\n")
cat("Filtered dataset size:", nrow(filtered_data), "\n")
cat("Number of outliers removed:", length(outliers), "\n")
