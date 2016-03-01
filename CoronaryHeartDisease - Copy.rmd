---
title: "Coronary Heart Disease"
author: "Ke Li"
date: "February 29, 2016"
output: html_document
---
## Motivation
- ![google](images/chd_google.png)

## Motivation

+ Predicting 10 year risk of CHD

+ Risk factors

+ **Demographic risk** factors: sex, age, education...

+ **Behavior risk** factors: currentSmoker, cigsPerDay, Smoking behavior...

+ **Medical history** factors: BPmeds, prevolentStroke, prevalentHypertensive diabetes...

+ **First exam** factors: totChol, sysBP, diaBP, BMI, heartRate, glucose...


## Methodology
### 10-Year CHD Risk Prediction

- Identify Risk Factors
- Predict Heart Disease
- Validate Model
- Define Interventions Using Model

Now we are going to use these factors to predict the 10-year risk CHD

## Datasets

```{r, echo=FALSE}
framingham = read.csv("DataSets/framingham.csv")
str(framingham)
```
## Logistic Regression Modeling
```{r, echo=FALSE}
library(caTools)
set.seed(1000)
```
- Split data into Training and Testing
```{r}
split=sample.split(framingham$TenYearCHD, SplitRatio=0.65)
train = subset(framingham, split=TRUE)
test = subset(framingham, split=FALSE)
```

##Logistic Regression Modeling
- Least important: Gender, Age, SysBP...
- Important: currentSmoker, BPMeds, diabetes, BMI, education...

```{r, echo=FALSE}
framinghamLog=glm(TenYearCHD ~ ., family = binomial, data=framingham)
summary(framinghamLog)
```







