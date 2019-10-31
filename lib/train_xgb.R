###########################################################
### Train a classification model with training features ###
###########################################################
train <- function(feature_df = pairwise_data, par = NULL){

  ### Input:
  ### - a data frame containing features and labels
  ### - a parameter list
  ### Output: trained model
  

  ### load libraries
  library("xgboost")
 
  ### Train with xgb
  if(is.null(par)){
    eta <- 0.5
  } else {
    eta <- par
  }
  
  labels<-as.numeric(as.matrix.data.frame(feature_df['emotion_idx']))
  train.d<-as.matrix.data.frame(feature_df[,-which(names(feature_df) == 'emotion_idx')])
  
#  xgb_train <- xgb.DMatrix(data = train.d, label = labels)
#  params <- list(booster = "gbtree", objective = "multi:softprob", num_class = 22, eval_metric = "mlogloss")
#  xgb_model <- xgb.train(params = params, data = xgb_train, nrounds = 100)
  

  
  xgb_model <- xgboost(data = train.d, label = labels, max.depth = 10,
                 eta = eta, nthread = 30, nrounds = 30 , verbose = 0, gamma =3
                 )
  
  return(model = xgb_model)
}

