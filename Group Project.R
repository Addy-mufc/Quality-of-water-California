df<-read.csv("D:/INST 627 Project Datasets/SpecificConductance.csv")
summary(df)
mean(df$SpecificConductance_result)
sd(df$SpecificConductance_result)
hist(df$SpecificConductance_result)
boxplot(df$SpecificConductance_result~df$county_name)
# perform a two-sample t-test
attach(df)
t.test(SpecificConductance_result~county_name, data=df, subset=county_name %in% c("Modoc", "Santa Clara"))
t.test(visitmin~webpage, data=df, subset=webpage %in% c("Change", "Video"))



df1<-read.csv("D:/INST 627 Project Datasets/Oxygen_result.csv")
attach(df1)
t.test(fdr_result~county_name, data=df1, subset=county_name %in% c("Modoc", "Santa Clara"))

df_final<-read.csv("D:/INST 627 Project Datasets/Cali_Counties.xlsx.csv")
attach(df_final)
model<-lm(Median_Price~Specific.Conductance)
summary(model)
cor.test(Specific.Conductance,Median_Price)
plot(Median_Price,Specific.Conductance)
