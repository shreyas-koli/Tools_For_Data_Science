print("Creating Visualisation using ggplot")

library(datasets)
data(mtcars)
head(mtcars, 5)

?mtcars #gives help/info about a datasets using with ?mtcars 
?iris


library(ggplot2)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point() + ggtitle("Displacement v/s miles per galloon(mpg)")

ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point() + ggtitle("Displacement v/s miles per galloon(mpg)")+labs(x = "Displacement", y = "mpg")


mtcars$vs <- as.factor(mtcars$vs)
ggplot(aes(x = vs, y = mpg), data = mtcars) + geom_boxplot(alpha = 0.3)+theme(legend.position = "none")

ggplot(aes(x = wt), data = mtcars) + geom_histogram(binwidth = 0.5)
