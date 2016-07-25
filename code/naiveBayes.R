library(e1071)

NB <-naiveBayes(Business_Sourced ~ ., data = Train)
summary(NB)

pred= predict(NB,Train)

table(pred, Train$Business_Sourced)
accuracy <- mean(pred == Train$Business_Sourced)
accuracy
