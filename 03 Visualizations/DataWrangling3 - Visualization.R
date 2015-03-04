VIS3 <- DATA3 %>% ggplot(aes(x = UNEMPLOYMENT_RATE_AVG, y = INTEREST_RATE_AVG))+
  geom_point(aes(color=STATE))

CORR3 <- cor(DATA1[,2:3])

VIS3
print(paste("Correlation of average state unemployment rate and average interest rate from our MBS sample is ",round(CORR3[1,2],digits = 3)))
print('This is a very weak correlation')


