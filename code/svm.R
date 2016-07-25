library(e1071)


s.v.m <-svm(Business_Sourced ~ ., data = Train)
summary(s.v.m)


svm.pred= predict(s.v.m,Train)

table(svm.pred, Train$Business_Sourced)
accuracy <- mean(svm.pred == Train$Business_Sourced)
accuracy