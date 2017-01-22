data(iris)
data <- iris[1:4]
prcomp.obj <- prcomp(data, scale=TRUE) # 主成分分析

pc1 <- prcomp.obj$x[,1] # 第一主成分得点
pc2 <- prcomp.obj$x[,2] # 第二主成分得点

label <- as.factor(iris[,5]) # 分類ラベル
percent <- summary(prcomp.obj)$importance[3,2] * 100 # 累積寄与率

plot(pc1, pc2, col = label, main = paste(percent, "%"))