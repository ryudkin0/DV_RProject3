VIS1 <- DATA1 %>% ggplot(aes(x= UNEMPLOYMENT_RATE, y = AVG_FICO))+geom_point(aes(color=STATE));VIS1

CORR <- cor(DATA1[,2:3])
print(paste("Correlation of average state unemployment rate and credit score from our MBS sample is ",round(CORR[1,2],digits = 3)))


