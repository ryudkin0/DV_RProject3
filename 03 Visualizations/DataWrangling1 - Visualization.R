VIS1 <- DATA1 %>% ggplot(aes(x= UNEMPLOYMENT_RATE, y = AVG_FICO))+geom_point(aes(color=STATE))+ geom_text(aes(label=STATE, hjust=1.5), size=3)

#Add and Format Title
VIS1 <- VIS1 +ggtitle('Unemployment Rate vs. Fico Score') +
  theme(plot.title=element_text(size=18, face="bold", vjust=2))
#Format Axis labels
VIS1 <- VIS1 + labs(x="Unemployment Rate (%)", y=paste("FICO Score")) + theme(
  axis.title.x=element_text(face="bold", vjust=0.35),
  axis.title.y=element_text(face="bold", vjust=0.35))
#Basic Formatting
VIS1 <- VIS1 + theme(panel.background = element_rect(fill = 'grey92',color = 'grey1')) + theme(legend.position='none')
VIS1

CORR <- cor(DATA1[,2:3])
print(paste("Correlation of average state unemployment rate and credit score from our MBS sample is ",round(CORR[1,2],digits = 3)))


