32;278;0c#load to data
#dt:datasets, label:users(30), act:each of activity labels(6)
library(caret)
library(doParallel)
library(nnet)

d <- data.frame(read.table("/home/deepstation/bsblab/technicakidz/Data/har/Activity1.txt"))
class <- data.frame(read.table("/home/deepstation/bsblab/technicakidz/Data/har/subject_a1.txt"))

#userとlabelの固定ラベルラベル作成 ex.)u1_walk

#colnames(class)[1] = "label"

#colnames(act)[1] = "act"
#ラベルの連結
#data = cbind(d, class)
#data = cbind(data, act)

class$V1 = factor(class$V1)
colnames(class)[1] = "label"

#並列化
t<-proc.time()

cl <- makeCluster(detectCores()) 

registerDoParallel(cl)

#Activityごとの結果
models = list()
models2 = list()
models3 = list()
models4 = list()
models5 = list()
models6 = list()

trControl = trainControl(method = 'repeatedcv',
                         number = 10,
                         repeats = 10)

#preProcess = NULL
print("Making knn model...")

models$knn <- train(d,class$label, method = 'knn',  tuneGrid = expand.grid(k=c(1,10)),
                    metric = 'Kappa',
                    trControl = trControl)

print("Making lda model...")
models$lda <- train(d,class$label,method = 'lda',
                    metric = 'Kappa', trControl = trControl)

print("Making rf model...")
models$lda <- train(d,class$label,method = 'rf', tuneGrid.grid(mtry = 2),
                    metric = 'Kappa', trControl = trControl)


print("Making svmRadial model...")
models$svmRadial <- train(d, class$label, method = 'svmRadial', tuneGrid = expand.grid(sigma=c(3 ^ (-2:2)), C=10),
                          metric = 'Kappa', trControl = trControl)

stopCluster(cl)

proc.time()-t

#plot
conf=confusionMatrix(models$knn,class%V1)
levelplot(sweep(x = conf$table, STATS = colSums(conf$table), MARGIN = 2, FUN = '/'), scales=list(x=list(rot=90)), col.regions=gray(100:0/100))