source("http://thegrantlab.org/misc/cdc.R")
tail(cdc$weight,n=20)

x=c(cdc[,"height"])
y=c(cdc[,"weight"])

plot(cdc$height,cdc$weight,xlab="Height(inches)",ylab="Weight(pounds)")

cor(cdc$height,cdc$weight)

height_m=cdc$height*0.0254
weight_kg=cdc$weight*0.454

BMI=(weight_kg)/(height_m^2)

plot(cdc$height,BMI)
cor(cdc$height,BMI)

sum(BMI>=30)

plot(cdc[1:100,"height"],cdc[1:100,"weight"],xlab="height",ylab="weight")

obese_individuals=subset(cdc$gender, subset=BMI>=30)
table(obese_individuals)

