VIS3 <- DATA3 %>% ggplot(aes(x = UNEMPLOYMENT_RATE_AVG, y = INTEREST_RATE_AVG))+
  geom_point(aes(color=STATE))+ geom_text(aes(label=STATE, hjust=1.5), size=3); VIS3

#Add and Format Title
VIS3 <- VIS3 +ggtitle('Unemployment Rate vs. Average Interest Rate') +
  theme(plot.title=element_text(size=18, face="bold", vjust=2)); VIS3
#Format Axis labels
VIS3 <- VIS3 + labs(x="Unemployment Rate (%)", y=paste(" Average Interest Rate (%)")) + theme(
  axis.title.x=element_text(face="bold", vjust=0.35),
  axis.title.y=element_text(face="bold", vjust=0.35)); VIS3
#Basic Formatting
VIS3 <- VIS3 + theme(panel.background = element_rect(fill = 'grey92',color = 'grey1')) + theme(legend.position='none'); VIS3




CORR3 <- cor(DATA1[,2:3])

VIS3
print(paste("Correlation of average state unemployment rate and average interest rate from our MBS sample is ",round(CORR3[1,2],digits = 3)))
print('This is a very weak correlation')


