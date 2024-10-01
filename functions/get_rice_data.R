get_rice_data <- function() {
}

library(tidyverse)

url <- "https://docs.google.com/spreadsheets/d/1Mk1YGH9LqjF7drJE-td1G_JkdADOU0eMlrP01WFBT8s/pub?gid=0&single=true&output=csv"

rice <- read_csv( url )

rice <- rice %>% 
#make date object
  mutate(Date = mdy_hms(DateTime)) %>% 
#make month, day, & weekday object
  mutate(Month = month(Date,
                     label = T,
                     abbr = F),
         Day = day(Date),
         Weekday = wday(Date,
                        label = T,
                        abbr = F)) %>% 
#convert f to c
  
#get rid of extra data
#reorder columns

return(rice)
