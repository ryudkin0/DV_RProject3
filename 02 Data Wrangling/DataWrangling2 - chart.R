DATA2 <- MBSALLDF %>% group_by(STATE,OCCUPANCY) %>% summarise(OCCUPANCY_COUNT = n()) %>% 
  spread(OCCUPANCY,OCCUPANCY_COUNT) %>% full_join(UNEMPLOYMENTDF,by="STATE") %>% 
  mutate(ABOVE_AVG_UNEMPLOYMENT = UNEMPLOYMENT_RATE > 4.45) %>% 
  select(ABOVE_AVG_UNEMPLOYMENT,IO,OO,SH)

DATA2[is.na(DATA2)] <- 0

DATA2 <- DATA2 %>% group_by(ABOVE_AVG_UNEMPLOYMENT) %>% 
  summarise(IO = mean(IO)*n(),OO = mean(OO)*n(),SH = mean(SH)*n())

DATA2[1,1] <- 'State Unemployment <= 4.45%'
DATA2[2,1] <- 'State Unemployment > 4.45%'

TDATA2 <- DATA2 %>% gather(ABOVE_AVG_UNEMPLOYMENT,value,2,3,4)
names(TDATA2) <- c('ABOVE_AVG_UNEMPLOYMENT','OCCUPANCY','COUNT')

tbl_df(DATA2)