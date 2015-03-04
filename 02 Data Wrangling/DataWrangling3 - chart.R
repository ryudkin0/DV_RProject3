DATA3 <- MBSALLDF %>% mutate(RATE_DIST = cume_dist(ORIG_RATE)) %>% filter(RATE_DIST >= .5) %>% 
  arrange(RATE_DIST) %>% left_join(UNEMPLOYMENTDF,by = 'STATE') %>% 
  select(STATE,INTEREST_RATE = ORIG_RATE,UNEMPLOYMENT_RATE) %>% tbl_df %>%
  group_by(STATE) %>% summarise(INTEREST_RATE_AVG = mean(INTEREST_RATE),UNEMPLOYMENT_RATE_AVG = mean(UNEMPLOYMENT_RATE))
  
  
