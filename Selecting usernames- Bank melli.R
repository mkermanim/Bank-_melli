library(dplyr)
library(tidyverse)
library(pander)
library(xlsx)
library(writexl)
library(magrittr)

#reading comments file as a df 
dfcomms <- as.data.frame(data.table::fread(file = 'comments_pod.csv'))

# selecting unique usernames 
uniqun <- dfcomms %>% select(username,count) %>%  distinct(username, .keep_all = T)

#making a random sample and saving it 
samplresult <- sample_n(uniqun,3)

#printing result as a pander table
samplresult  %>% pander(style="rmarkdown")

# exporting result as a excel file
write_xlsx(samplresult, 'result_podcast.xlsx')


