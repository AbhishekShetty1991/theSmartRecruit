## Apply Logistic model

logistic <- glm(Business_Sourced ~ ., data = Train,family='binomial')

summary(logistic)

logistic.pred= predict(logistic,Train)

table(logistic.pred, Train$Business_Sourced)
accuracy <- mean(logistic.pred == Train$Business_Sourced)
accuracy