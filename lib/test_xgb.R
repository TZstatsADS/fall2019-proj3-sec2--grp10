########################################
### Classification with testing data ###
########################################

test <- function(model, dat_test){
  
  ### Input: 
  ###  - the fitted classification model using training data
  ###  - processed features from testing images 
  ### Output: training model specification
  
  ### load libraries
  library("xgboost")
  
  ### make predictions
  pred <- round(predict(model, as.matrix.data.frame(dat_test)),0)
  
  return(pred)
}
