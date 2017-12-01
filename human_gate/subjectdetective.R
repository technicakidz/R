#load to data
#dt:datasets, label:users(30), act:each of activity labels(6)
install.packages("rlang")
install.packages("ggplot2")
install.packages("caret")
library(caret)
library(doParallel)
library(e1071)

d <- data.frame(read.table("/Users/yoshidatakayuki/Data/har/data100.txt"))
class <- data.frame(read.table("/Users/yoshidatakayuki/Data/har/label100.txt"))
#other dataset
d <- data.frame(read.table("/Users/yoshidatakayuki/Data/USC-HAD_a1/a1.txt"))
class <- data.frame(read.table("/Users/yoshidatakayuki/Data/USC-HAD_a1/subject.txt"))

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

tmp = list()
#Activityごとの結果
models = list()
models2 = list()
models3 = list()
models4 = list()
models5 = list()
models6 = list()

#USC-HAD
models_knn = list()
models_lda = list()
models_rf = list()
models_j48 = list()
models_svm = list()


trControl = trainControl(method = 'repeatedcv',
                         number = 10,
-uuu:---F1  preprocess.R   Top L1     (Fundamental)-------------------------------------------------------------------------------------------------------------------------------
Loading image...done#load to data
#dt:datasets, label:users(30), act:each of activity labels(6)
install.packages("rlang")
install.packages("ggplot2")
install.packages("caret")
library(caret)
library(doParallel)
library(e1071)
library(nnet)

#define dataset
d <- data.frame(read.table("/Users/username/Data/USC-HAD_a1/a1.txt"))
class <- data.frame(read.table("/Users/username/Data/USC-HAD_a1/subject.txt"))

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

tmp = list()
#Activityごとの結果
models = list()
models2 = list()
models3 = list()
models4 = list()
models5 = list()
models6 = list()

#USC-HAD
Umodels_knn_a1 = list()
Umodels_lda_a1 = list()
Umodels_rf_a1 = list()
Umodels_j48_a1 = list()
Umodels_svm_a1 = list()


trControl = trainControl(method = 'repeatedcv',
                         number = 10,
                         repeats = 10)

#preProcess = NULL
print("Making knn model...")
Umodels_knn_a1$knn <- train(d, class$label, method = 'knn', tuneGrid = expand.grid(k=c(1:10)),
                    metric = 'Kappa', trControl = trControl)

print("Making lda model...")
Umodels_lda_a1$lda <- train(d, class$label, method = 'lda',
                    metric = 'Kappa', trControl = trControl)

print("Making J48 model...")
Umodels_j48_a1$rpart <- train(d, class$label, method = 'J48',
                    metric = 'Kappa', trControl = trControl)

print("Making rf model...")
Umodels_rf_a1$rf <- train(d, class$label, method = 'rf', tuneGrid = expand.grid(mtry = 2),
                    metric = 'Kappa', trControl = trControl)

print("Making svmRadial model...")
Umodels_svm_a1$svmRadial <- train(d, class$label, method = 'svmRadial', tuneGrid = expand.grid(sigma=c(3 ^ (-2:2)), C=10),
                          metric = 'Kappa', trControl = trControl)

stopCluster(cl)
proc.time()-t


#plot
conf=confusionMatrix()
levelplot(sweep(x = conf$table, STATS = colSums(conf$table), MARGIN = 2, FUN = '/'), scales=list(x=list(rot=90)), col.regions=gray(100:0/100))