library(dplyr)
library(tidyverse)
library(pander)
library(xlsx)
library(readxl)
library(persiandictionary)

#reading comments file as a df 
channel_comms <- read_xlsx('comments_channel.xlsx', 1)


# selecting unique usernames 
uniqun <- channel_comms %>% select(name,mobile) %>%  distinct(name, .keep_all = T)

#making a random sample and saving it 
samplresult <- sample_n(uniqun,3)

#printing result as a pander table
samplresult  %>% pander(style="rmarkdown")

# exporting result as a excel file
write.xlsx(samplresult, 'result_channel.xlsx')


