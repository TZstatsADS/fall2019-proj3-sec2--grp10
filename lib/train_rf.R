###########################################################
### Train a classification model with training features ###
###########################################################
train_rf <- function(train_df, para){
  ### Train a classfication model using processed features from training images
  
  ### Input:
  ### - a data frame containing features and labels
  ### - a parameter list
  ### Output: trained model
  
  ### Train with Random Forest
  
  model = randomForest(emotion_idx~.,data = train_df,ntree = para,importance = TRUE)

  
  return(model)
}

