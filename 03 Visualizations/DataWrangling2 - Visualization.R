VIS2 <- TDATA2 %>% ggplot(aes(x = OCCUPANCY, y=COUNT,fill = ABOVE_AVG_UNEMPLOYMENT))+
  geom_bar(stat='identity',position='dodge')

VIS2
  


