names(UNEMPLOYMENTDF) = c("STATE","UNEMPLOYMENT_RATE")
options(warn=-1)

DATA1 <- MBSALLDF %>% group_by(STATE) %>% summarise(AVG_FICO = mean(FICO)) %>% 
  inner_join(UNEMPLOYMENTDF,by="STATE")

tbl_df(DATA1)


