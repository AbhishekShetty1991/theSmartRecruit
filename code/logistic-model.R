## Apply Logistic model

logistic <- glm(Business_Sourced ~ ., data = Train,family='binomial')

summary(logistic)