2+2
library(tidyverse)
sample_data <- read_csv("sample_data.csv")
name <- "agar"
name
sun(5,6)
sum(5, 6) 
round(x = 3.1415)
read.csv(file = 'sample_data.csv')
ggplot(data=sample_data)         

ggplot(data = sample_data) +
  aes(x = temperature)
ggplot(data = sample_data) +
  aes(x = temperature) +
  labs(x = "Temperature (C)") +
  aes(y = cells_per_ml) +
  labs(y = "Cells per mL") +
  geom_point() +
  labs(title = "Does temperature affect microbial abundance?") +
  aes(color = env_group)

ggplot(data = sample_data) +
  aes(x = temperature) +
  labs(x = "Temperature (C)") +
  aes(y = cells_per_ml) +
  labs(y = "Cells per mL") +
  geom_point() +
  labs(title = "Does temperature affect microbial abundance?") +
  aes(color = env_group) +
  aes(size = chlorophyll)
ggplot(data = sample_data) +
  aes(x = temperature) +
  labs(x = "Temperature (C)") +
  aes(y = cells_per_ml) +
  labs(y = "Cells per mL") +
  geom_point() +
  labs(title = "Does temperature affect microbial abundance?") +
  aes(color = env_group) +
  aes(size = chlorophyll) +
  labs(size = "Chlorophyll (ug/L)",
       color = "Environmental Group")
ggplot(data = sample_data) +
  aes(x = temperature) +
  labs(x = "Temperature (C)") +
  aes(y = cells_per_ml/1000000) +
  labs(y = "Cells (millions/mL)") +
  geom_point() +
  labs(title = "Does temperature affect microbial abundance?") +
  aes(color = env_group) +
  aes(size = chlorophyll) +
  labs(size = "Chlorophyll (ug/L)",
       color = "Environmental Group")
buoy_data <- read_csv("buoy_data.csv")
head(buoy_data)
ggplot(data = buoy_data) +
  aes(x=day_of_year, y=temperature, color=depth) +
  geom_point()
ggplot(data = buoy_data) +
  aes(x = day_of_year, y = temperature, group = sensor, color = depth) +
  geom_line()
ggplot(data = buoy_data) +
  aes(x = day_of_year, y = temperature, group = sensor, color = buoy) +
  geom_line()
ggplot(data = buoy_data) +
  aes(x = day_of_year, y = temperature, group = sensor, color = depth) +
  geom_line() + 
  facet_wrap(~buoy)
ggplot(data = buoy_data) +
  aes(x = day_of_year, y = temperature, group = sensor, color = depth) +
  geom_line() + 
  facet_grid(rows = vars(buoy))
ggplot(data = sample_data) +
  aes(x = env_group, y = cells_per_ml) +
  geom_boxplot()

ggplot(data = sample_data) +
  aes(x = env_group, y = cells_per_ml) +
  geom_boxplot() +
  geom_jitter()
ggplot(data = sample_data) +
  aes(x = env_group, y = cells_per_ml) +
  geom_boxplot(fill="red")
graph1 <- ggplot(data = sample_data) +
  aes(x = env_group, y = cells_per_ml) +
  geom_boxplot(aes(fill=env_group))
ggsave("graph1.jpg")

