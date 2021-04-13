
library(caTools)
library(rpart)
library(rpart.plot)

osn_dataset <- read.csv("C:\\Users\\marce\\OneDrive\\Ambiente de Trabalho\\InteligenciaArtificial\\Ficha5\\encontros.csv") # TODO: CHANGE THE FILE PATH
osn_data <- subset(osn_dataset, select = - tipo_dia)
View(osn_data)


spl = sample.split(osn_data$encontro, SplitRatio = 0.7)
osn_ads_train = subset(osn_data, spl == TRUE)
osn_ads_test = subset(osn_data, spl == FALSE)

osn_ads_model <- rpart(encontro ~., 
                       data = osn_ads_test, 
                       method = 'class',
                       control = rpart.control(
                         minsplit=1)
                      )
osn_ads_model

# Ploting the tree model
rpart.plot(osn_ads_model, extra = 102)

#Para tree com osn_dataset
#Baseado nos resultados inicias pode se aconcelhar os utilizadores 
#Tenham em conta a temperatura 
#e o dia da semana 
##inicialmente estes dois fatores sao os que influenciam mais a resposta positiva

#Para tree com osn_ads_train
#Baseado nos resultados obtidos do sub data se de 70/30
#em que 70 e o train verifica se que os fatores que
#influenciam mais a decisao positiva sao
#meteo e tipo de encontro de jantar

