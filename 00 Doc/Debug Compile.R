source('../01 Data/Load_Packages.R', echo = TRUE)
source('../01 Data/Load_Data.R', echo = TRUE)
MBSALLDF <- bind_rows(MBSDF, MBS2DF)

source("../02 Data Wrangling/DataWrangling1 - chart.R", echo = TRUE)
source("../03 Visualizations/DataWrangling1 - visualization.R", echo = TRUE)

source("../02 Data Wrangling/DataWrangling2 - chart.R", echo = TRUE)
source("../03 Visualizations/DataWrangling2 - visualization.R", echo = TRUE)

source("../02 Data Wrangling/DataWrangling3 - chart.R", echo = TRUE)
source("../03 Visualizations/DataWrangling3 - visualization.R", echo = TRUE)

source("../03 Visualizations/Categorical.R", echo = TRUE)
