# Project: Can you recognize the emotion from an image of a face? 
<img src="figs/CE.jpg" alt="Compound Emotions" width="500"/>
(Image source: https://www.pnas.org/content/111/15/E1454)

### [Full Project Description](doc/project3_desc.md)

Term: Fall 2019

+ Team 10
+ Team members
	+ Yang, Siyu sy2796
	+ Zhang, Qingyu qz2351
	+ Xu, Yizhen yx2470
	+ Jin, Jie jj2972
	+ Huang, Yian yh3127

+ Project summary: In this project, we created a classification engine for facial emotion recognition. The original data set consists of 7 simple emotions and 15 complex emotions for classification. The train data set contains 2000 elememts with 6007 features. 6006 of the features indicate the distance between different fiducial points. The 6007th feature is the numeric labels feature, where the different facial expression are represented by the 1:22. The test data set contains 500 elements with 6007 features.

+ Our group process the feature selection with Rfe method and train set method.

+ Our group decides to fit gbm, random forest, xgboost models and select the model with best performance. The baseline gbm model turns to have accuracy rate: 43.8%. Our group improve the accuracy performance with the random forest model and fit the random forest model with 600 trees. The accuracy for the random forest model is 46.6%. The xgboost model evidently underperformed the baseline model. Therefore, our group select the random forest model as the improved model. 


**Contribution statement**: 


overall steps discussion : Siyu Yang, Qingyu Zhang, Yizhen Xu, Jie Jin, Yian Huang

feature selection: Siyu Yang

gbm model : Qingyu Zhang

random forest model: Yizhen Xu

xgboost model & cross validation: Yian Huang

SVM model & cross validation: Jie Jin

cross validation of gbm and random forest: Yizhen Xu, Qingyu Zhang, Siyu Yang

code integration: Siyu Yang

presentation: Siyu Yang



Following [suggestions](http://nicercode.github.io/blog/2013-04-05-projects/) by [RICH FITZJOHN](http://nicercode.github.io/about/#Team) (@richfitz). This folder is orgarnized as follows.

```
proj/
├── lib/
├── data/
├── doc/
├── figs/
└── output/
```

Please see each subfolder for a README file.
