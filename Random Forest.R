# Load the required packages
#install.packages("rpart")
library(rpart)

#install.packages("rattle")
library(rattle)

# Load the dataset
diabetes <- read.csv("/home/yorgun/r_tube/Rcode/karar_agaclari/diabetes.csv")
#diabetes <- read.csv("diabetes.csv")

# View the dataset
View(diabetes)

# Check for missing values
library(mice)
md.pattern(diabetes) # There are no missing observations

# Check the distribution of the Outcome variable
table(diabetes$Outcome)
# 0: 500 cases (no diabetes)
# 1: 268 cases (diabetes present)

### Prepare the datasets for training and testing
set.seed(165)
trainIndex <- sample(1:nrow(diabetes) , size = 0.8*nrow(diabetes))

trainSet <- diabetes[trainIndex,]
testSet <- diabetes[-trainIndex,]

nrow(trainSet) # 614
nrow(testSet) # 154
table(trainSet$Outcome) # 0: 401 cases, 1: 213 cases
table(testSet$Outcome) # 0: 99 cases, 1: 55 cases

### Model Creation

# Convert Outcome to a factor variable
trainSet$Outcome <- as.factor(trainSet$Outcome)
testSet$Outcome <- as.factor(testSet$Outcome)

# Build models using different splitting criteria (entropy and Gini)
modelEntropy <- rpart(Outcome ~ . , data = trainSet , method = "class" , 
                  parms = list(split = "information"))

modelGini <- rpart(Outcome ~ . , data = trainSet , method = "class" , 
                      parms = list(split = "gini"))

# Visualize the decision tree
fancyRpartPlot(modelEntropy)

# Model details
summary(modelEntropy)
summary(modelGini)

# Hyperparameter tuning
modelEntropyHyper <- rpart(Outcome ~ . , data = trainSet , method = "class" , 
                      parms = list(split = "information") ,
                      control = rpart.control(minsplit = 40 , cp = 0.02 , maxdepth = 5))

summary(modelEntropyHyper)

### Prediction

predModelEntropy <- predict(modelEntropy , testSet , type = "class")
predModelGini <- predict(modelGini , testSet , type = "class")
predModelEntropyHyper <- predict(modelEntropyHyper , testSet , type="class")

# Evaluate the models
library(caret)

confusionMatrix(predModelEntropy , testSet$Outcome)
confusionMatrix(predModelGini , testSet$Outcome)
confusionMatrix(predModelEntropyHyper , testSet$Outcome)

## Model Tuning

modelCP <- train(Outcome ~ . , data  = trainSet ,
                 method = "rpart" ,
                 tuneLength = 20,
                 trControl = trainControl(method="cv" , number = 5 , search = "random")
                 )

modelMDGrid <- train(Outcome ~ . , data  = trainSet ,
                 method = "rpart2" ,
                 tuneGrid = expand.grid(maxdepth = 3:20),
                 trControl = trainControl(method="cv" , number = 5 , search = "grid")
)

## Random Forest Model

# Load the package
library(randomForest)

# Build the random forest model
modelRF <- randomForest(Outcome ~ . , data  = trainSet , ntree = 500 )

# Predict using the random forest model
predRF <- predict(modelRF , testSet)

# Evaluate the random forest model
confusionMatrix(predRF , testSet$Outcome)

## Random Forest Tuning

trControlRF <- trainControl(method = "repeatedcv" , 
                            number = 10 , repeats = 3 , search = "random") 

modelRFTune <- train(Outcome ~ . , data = trainSet , 
                     method = "rf",
                     tuneLength = 20,
                     trControl = trControlRF
                     ) 

# Predict using the tuned random forest model
predRFTune <- predict(modelRFTune$finalModel , testSet)

# Evaluate the tuned random forest model
confusionMatrix(predRFTune , testSet$Outcome)
