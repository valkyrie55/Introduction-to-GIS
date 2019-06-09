#dplyr package
# select()
# filter()
# group_by()
# summarise()
# mutate()
# join()
# arrange()
library(gapminder)
library(dplyr)
data(gapminder)
gap<- gapminder
str(gap)
# filter() - to select a subset of abservations from our observations
gap %>% filter(year == 2000, country =="China")
# arrange() - sorts the observation based on a particular column
gap %>% filter(year == 2002) %>% 
  arrange(desc(gdpPercap))   #in descending order
 #arrange((gdpPercap))   #in ascending order
# mutate() - change an existing variable based on another one
gap %>% 
  mutate(gdp = gdpPercap * pop) %>%
  filter(year == 2002) %>% 
  arrange(desc(gdpPercap))