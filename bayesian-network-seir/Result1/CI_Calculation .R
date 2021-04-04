
setwd('/Users/raghavawasthi/Desktop/Drug_Distribution/V1.1/Result1/')

df = read.csv('/Users/raghavawasthi/Desktop/Drug_Distribution/V1.1/Results with CI - Sheet1.csv')
names(df)

df = df[,c("Date","State","Mean.Action","Vaccine.Distribution..",
           "Lower.CI..new.using.n.50.",
           "Upper.CI..new.using.n.50.")]
df$diff = df$Mean.Action-df$Vaccine.Distribution..

df$Lower.CI..new.using.n.50. = df$Lower.CI..new.using.n.50.-df$diff
df$Upper.CI..new.using.n.50. = df$Upper.CI..new.using.n.50. - df$diff
df$diff = NULL
df$Mean.Action = NULL
library(ggplot2)
# ggplot(data = df,aes(x=Date,y=Vaccine.Distribution..,group=State)) +
# geom_ribbon(aes(ymin=Lower.CI..new.using.n.50.,ymax=Upper.CI..new.using.n.50.,fill = State),alpha=0.5) +
# geom_line(aes(group = State,color=State),lwd=1) +
# theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) + ylab('Vaccine.Distribution(%)')+
# ggtitle('VacSIM Model driven Vaccine Distribution')
# ggsave(filename = 'Vaccine_Distribution.png',dpi=300)
# write.csv(df,'Vaccine_Distribution_with_CI.csv',row.names=F)


library(viridis)

ggplot(data = df,aes(x=Date,y=Vaccine.Distribution..,group=State)) +
  geom_bar(aes(fill =State), position = "dodge", stat="identity") +
  geom_errorbar(aes(ymin= Lower.CI..new.using.n.50., ymax=Upper.CI..new.using.n.50.), width=.2,position=position_dodge(.9))+
  # scale_fill_viridis(discrete = T)+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) + ylab('Vaccine.Distribution(%)')



