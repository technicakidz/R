#load to data
#dt:datasets, label:users(30), act:each of activity labels(6)
library(caret)

d <- data.frame(read.table("/Users/yoshidatakayuki/Data/uci_har_hg/train/X_train.txt"))
act <- data.frame(read.table("/Users/yoshidatakayuki/Data/uci_har_hg/train/y_train.txt"))
class <- data.frame(read.table("/Users/yoshidatakayuki/Data/uci_har_hg/train/subject_train.txt"))

colnames(class)[1] = "label"

colnames(act)[1] = "act"
#ラベルの連結
data = cbind(d, class)
data = cbind(data, act)

class$V1 = factor(class$V1)

#userとlabelの固定ラベルラベル作成 ex.)u1_walk

models = list()
trControl = trainControl(method = 'repeatedcv',
                         number = 2,
                         repeats = 1)

#preProcess = NULL
print("Making knn model...")

models$knn <- train(d,class$label, method = 'knn',  tuneGrid = expand.grid(k=c(3,5)),
                    metric = 'Kappa',
                    trControl = trControl)

print("Making lda model...")
models$lda <- train(d,class$label,method = 'lda',
                    preProcess = preProcess, metric = 'Kappa', trControl = trControl)

print("Making rf model...")
models$rf <- train(d, class$label, method = 'rf', tuneGrid = expand.grid(mtry = 2),
                   preProcess = preProcess, metric = 'Kappa', trControl = trControl)#,

print("Making svmRadial model...")
models$svmRadial <- train(d, class$label, method = 'svmRadial', tuneGrid = expand.grid(sigma=c(0.014,0.034), C=10),
                          preProcess = preProcess, metric = 'Kappa', trControl = trControl)#,