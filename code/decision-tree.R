library(rpart)
library(rpart.plot)

decision.tree <- rpart(Business_Sourced ~ ., data = Train, method = "class")

printcp(decision.tree) # display the results 
plotcp(decision.tree) # visualize cross-validation results 
summary(decision.tree) # detailed summary of splits

# plot tree 
plot(decision.tree, uniform=TRUE, 
     main="The Smart Recruit")
text(decision.tree, use.n=TRUE, all=TRUE, cex=.8)

# prune the tree 
pfit<- prune(decision.tree, cp= decision.tree$cptable[which.min(decision.tree$cptable[,"xerror"]),"CP"])

# plot the pruned tree 
plot(p.decision.tree, uniform=TRUE, 
     main="Pruned Smart Recruit")
text(p.decision.tree, use.n=TRUE, all=TRUE, cex=.8)

decision.tree.pred= predict(decision.tree,Train)

table(decision.tree.pred, Train$Business_Sourced)
accuracy <- mean(decision.tree.pred == Train$Business_Sourced)
accuracy

