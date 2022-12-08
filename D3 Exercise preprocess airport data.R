library(tidyverse)
weather = nycflights13::weather

# summarize per month
tempByMonth = weather %>%
  group_by(origin, year, month) %>%
  summarise(avg.temp = mean(temp, na.rm = TRUE),
            max.temp = max(temp, na.rm = TRUE)) %>%
  ungroup()
tempByMonth

# get max values of monthly avg temperatures
maxTempByMonth = tempByMonth %>%
  group_by(origin) %>%
  summarise(max.avg.temp = max(avg.temp, na.rm = TRUE)) %>%
  ungroup()
maxTempByMonth

# join with airport data
maxTempAirports = left_join(maxTempByMonth, nycflights13::airports, by = c("origin" = "faa"))
maxTempAirports

# filter and arrange
maxTempAirports %>%
  select(name, max.avg.temp, lat, lon, alt) %>%
  arrange(-max.avg.temp)
