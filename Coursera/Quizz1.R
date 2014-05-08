hw1_data <- read.csv("C:/Users/Fafner/Desktop/hw1_data.csv")

require(plyr)
require(dplyr)

require(swirl)

hw1_data[1:2,]

length(hw1_data$Day)


hw1_data[152:153,]

hw1_data[47, "Ozone"]

length(hw1_data$Ozone) - length(na.omit(hw1_data$Ozone))

O3 <- (na.omit(hw1_data$Ozone))
mean(O3)

sub <- hw1_data[hw1_data$Ozone > 31 & hw1_data$Temp > 90,]
mean(na.omit(sub$Solar.R))

mean(na.omit(hw1_data[hw1_data$Month == 6,]$Temp))

max(hw1_data[hw1_data$Month == 5,]$Ozone, na.rm=TRUE)
