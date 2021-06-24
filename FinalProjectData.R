raw_data <- read_html("https://sinoalice.game-db.tw/weapons")
x<- raw_data %>% 
html_elements(".colMaxTotal") %>% 
  html_text2() %>% 
  as_tibble() 

html_elements(".colCost") %>% 
  html_text2() %>% 
  as_tibble() 

write_csv2(x, "FinalProjectData.csv")