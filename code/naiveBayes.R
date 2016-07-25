library(e1071)

fit <-naiveBayes(Business_Sourced ~ ., data = Train)
summary(fit)

pred= predict(fit,Train)

table(pred, Train$Business_Sourced)
accuracy <- mean(pred == Train$Business_Sourced)
accuracy
