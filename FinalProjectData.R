library(tidyverse)
library(rvest)
raw_data<- read_html("https://sinoalice.game-db.tw/weapons")
x<- raw_data %>% 
html_elements("td:nth-child(10)") %>% 
 html_text2() %>% 
  as_tibble() 
x
y<- raw_data %>% 
html_elements(".colCost") %>% 
  html_text2() %>% 
  as_tibble() 

write_csv2(x, "FinalProjectData.csv")
write_csv2(y, "FinalProjectDataY.csv")




