km <- kmeans(iris[,1:4],3)
result <- km$cluster
result <- as.vector(result)
df <- transform(iris,kmeans=result)
ggplot(df,aes(x=Sepal.Length,y=Sepal.Width,color=factor(kmeans),group=kmeans))+geom_point()
