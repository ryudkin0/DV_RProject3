VIS2 <- TDATA2 %>% ggplot(aes(x = OCCUPANCY, y=COUNT,fill = ABOVE_AVG_UNEMPLOYMENT))+
  geom_bar(stat='identity',position='dodge')+ theme(legend.title=element_blank());VIS2
#Add and Format Title
VIS2 <- VIS2 +ggtitle('Occupant Type vs. Median Unemployment Rate') +
  theme(plot.title=element_text(size=18, face="bold", vjust=2)); VIS2

#Axis Label Formatting
VIS2 <- VIS2 + labs(x="Occupant Type", y=paste("Count")) + theme(
  axis.title.x=element_text(face="bold", vjust=0.35),
  axis.title.y=element_text(face="bold", vjust=0.35)); VIS2


