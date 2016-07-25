library(randomForest)

random.forest <- randomForest(Business_Sourced ~ ., data = Train)

print(random.forest) # view results 
importance(random.forest) # importance of each predictor

random.forest.pred= predict(random.forest,Train)

table(random.forest.pred, Train$Business_Sourced)
accuracy <- mean(random.forest.pred == Train$Business_Sourced)
accuracy