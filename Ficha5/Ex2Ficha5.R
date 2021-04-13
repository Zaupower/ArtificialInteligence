library(caTools)
library(rpart)
library(rpart.plot)

osn_datasetT <- read.csv("C:\\Users\\marce\\OneDrive\\Ambiente de Trabalho\\InteligenciaArtificial\\Ficha5\\titanic.csv") # TODO: CHANGE THE FILE PATH
osn_data <- subset(osn_datasetT, select = - {PassengerId; Ticket})
#osn_data <- subset(osn_datasetT, select = - {PassengerId, Ticket}, select - Ticket)
View(osn_data)

#Randomize data set to maximaze 70/30 slipt
random_indexes <- sample(1:nrow(osn_data))
osn_data <- osn_data[random_indexes,]

# Spliting the dataset to generate train and test data. The split ratio is
# equal to 0.75, meaning that 75% of data will be used for train and the remaining
# (30%) will be used for test.

spl = sample.split(osn_data$Survived, SplitRatio = 0.75)
osn_ads_train = subset(osn_data, spl == TRUE)
osn_ads_test = subset(osn_data, spl == FALSE)

View(osn_ads_train)
# Model Training. method is 'class' for classification and 'anova' for regression
osn_ads_model <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, 
                       data = osn_ads_train, 
                       method = 'class',
                       control = rpart.control(
                         minsplit=2
                         )
)
osn_ads_model


# Ploting the tree model
rpart.plot(osn_ads_model, extra = 102)