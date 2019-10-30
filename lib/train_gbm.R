###########################################################
### Train a classification model with training features ###
###########################################################
train <- function(feature_df = pairwise_data, par = NULL){
  ### Train an SVM model using processed features from training images
  
  ### Input:
  ### - a data frame containing features and labels
  ### - a parameter list
  ### Output: trained model
  
  ### load libraries
  library("gbm")
  
  ### Train with GBM
  if(is.null(par)){
    depth = -3
    lr = 0.001
  } else {
    depth = par$depth
    learning_rate = par$lr
  }
  
  gbm_model <- gbm(emotion_idx~., data = feature_df, distribution = "multinomial",
                   n.trees=100, interaction.depth = depth, shrinkage = learning_rate) 
  
  return(model = gbm_model)
}

