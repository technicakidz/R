#load to data
#dt:datasets, label:users(30), act:each of activity labels(6)
library(caret)
library(doParallel)

d <- data.frame(read.table("/Users/Data/uci_har/train/X_train.txt"))
act <- data.frame(read.table("/Users/Data/uci_har/train/y_train.txt"))
class <- data.frame(read.table("/Users/Data/uci_har/train/subject_train.txt"))

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

models = list()
trControl = trainControl(method = 'repeatedcv',
                         number = 10,
                         repeats = 10)

#preProcess = NULL
print("Making knn model...")

models$knn <- train(d,class$label, method = 'knn',  tuneGrid = expand.grid(k=c(3,5)),
                    metric = 'Kappa',
                    trControl = trControl)

print("Making lda model...")
models$lda <- train(d,class$label,method = 'lda',
                    metric = 'Kappa', trControl = trControl)


print("Making svmRadial model...")
models$svmRadial <- train(d, class$label, method = 'svmRadial', tuneGrid = expand.grid(sigma=c(0.014,0.034), C=10),
                          metric = 'Kappa', trControl = trControl)

stopCluster(cl)

proc.time()-t