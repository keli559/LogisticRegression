---
title: "Coronary Heart Disease"
author: "Ke Li"
date: "February 29, 2016"
output: ioslides_presentation
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

- Identify Risk Factors
- Predict Heart Disease
- Validate Model
- Define Interventions Using Model

Now we are going to use these factors to predict the 10-year risk CHD

## Data sets

```{r}
framingham = read.csv("DataSets/framingham.csv")
str(framingham)
```
