sample(x = c(1:1000, NA), 
       size = 1001) |>
  mean()

sample(x = c(1:1000, NA), 
       size = 1001) |>
  mean(na.rm=TRUE)
# pipe ; na.rm - remove missing values na.rm	logical. Should missing values be removed?
cor_data <- data.frame(x = sample(c(rnorm(n = 100), NA), 10000, replace = TRUE), 
                       y = sample(c(rnorm(n = 100), NA), 10000, replace = TRUE), 
                       z = sample(c(rnorm(n = 100), NA), 10000, replace = TRUE))
cor(cor_data) #correlation [-1,1]
cor(cor_data,use="pairwise.complete.obs")

land_value <- read.csv("/Users/dwellinpeace/Desktop/ND-experience/prework/coding\ prework/stJoeLand.csv")
summary(land_value)
summary(land_value$school_district)
summary(as.factor(land_value$school_district))

factor(seq(from = 1, to = 10, by = .5)) |>    # generate a sequence of number from 1 to 10, by .5
  as.numeric() |>
  mean()

factor(seq(from = 1, to = 10, by = .5)) |>    # generate a sequence of number from 1 to 10, by .5
  as.character() |>
  as.numeric() |>
  mean()

land_value$dollar_per_acre <- land_value$sale_price / land_value$acreage
view(land_value)
mean(land_value$dollar_per_acre[land_value$dollar_per_acre!=Inf])
land_value[, c("sale_price", "bedrooms")]
land_value[, -c("sale_price", "bedrooms")]
drop_vars <- which(names(land_value) %in% c("sale_price", "bedrooms"))
land_value[, -drop_vars]

