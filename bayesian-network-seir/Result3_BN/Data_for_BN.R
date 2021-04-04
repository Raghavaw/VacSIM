
setwd('/Users/raghavawasthi/Desktop/Drug_Distribution/V1.1/Result3_BN/')
df = read.csv('BN form(new data).csv')
names(df)[7] = 'Vaccine_Percentage'
names(df)[4] = 'Infected_People'

write.csv(df,file='BN_Data.csv',row.names = F)

# bl = read.csv('Blacklist.csv')
# names(df)
# bl$from
