install.packages(c("car", "ggplot2"))
library(car)
car::scatterplot(mpg ~ disp, 
                 data = mtcars)
library(ggplot2)
my_plot <- ggplot(data = mtcars, 
       mapping = aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm") + theme_minimal()
install.packages('plotly')
plotly::ggplotly(my_plot)
st_joe_land <- read.delim(file = "/Users/dwellinpeace/Desktop/ND-experience/prework/coding\ prework/stJoeLand.csv", sep = ",")
st_joe_land
#st_joe_land <- read.delim(file = "/Users/dwellinpeace/Desktop/ND-experience/prework/coding\ prework/stJoeLand.csv")
#st_joe_land
install.packages(c("readr", "data.table"))
st_joe_land_readr <- readr::read_csv(file = "/Users/dwellinpeace/Desktop/ND-experience/prework/coding\ prework/stJoeLand.csv")
st_joe_land_readr
st_joe_land_datatable <- data.table::fread(input = "/Users/dwellinpeace/Desktop/ND-experience/prework/coding\ prework/stJoeLand.csv")
st_joe_land_datatable
