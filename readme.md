# Coronary Heart Disease
Ke Li  
February 29, 2016  
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


```
## 'data.frame':	4240 obs. of  16 variables:
##  $ male           : int  1 0 1 0 0 0 0 0 1 1 ...
##  $ age            : int  39 46 48 61 46 43 63 45 52 43 ...
##  $ education      : int  4 2 1 3 3 2 1 2 1 1 ...
##  $ currentSmoker  : int  0 0 1 1 1 0 0 1 0 1 ...
##  $ cigsPerDay     : int  0 0 20 30 23 0 0 20 0 30 ...
##  $ BPMeds         : int  0 0 0 0 0 0 0 0 0 0 ...
##  $ prevalentStroke: int  0 0 0 0 0 0 0 0 0 0 ...
##  $ prevalentHyp   : int  0 0 0 1 0 1 0 0 1 1 ...
##  $ diabetes       : int  0 0 0 0 0 0 0 0 0 0 ...
##  $ totChol        : int  195 250 245 225 285 228 205 313 260 225 ...
##  $ sysBP          : num  106 121 128 150 130 ...
##  $ diaBP          : num  70 81 80 95 84 110 71 71 89 107 ...
##  $ BMI            : num  27 28.7 25.3 28.6 23.1 ...
##  $ heartRate      : int  80 95 75 65 85 77 60 79 76 93 ...
##  $ glucose        : int  77 76 70 103 85 99 85 78 79 88 ...
##  $ TenYearCHD     : int  0 0 0 1 0 0 1 0 0 0 ...
```
## Logistic Regression Modeling

- Split data into Training and Testing

```r
split=sample.split(framingham$TenYearCHD, SplitRatio=0.65)
train = subset(framingham, split=TRUE)
test = subset(framingham, split=FALSE)
```

##Logistic Regression Modeling
- Least important: Gender, Age, SysBP...
- Important: currentSmoker, BPMeds, diabetes, BMI, education...


```
## 
## Call:
## glm(formula = TenYearCHD ~ ., family = binomial, data = framingham)
## 
## Deviance Residuals: 
##     Min       1Q   Median       3Q      Max  
## -1.9582  -0.5939  -0.4264  -0.2829   2.8409  
## 
## Coefficients:
##                  Estimate Std. Error z value Pr(>|z|)    
## (Intercept)     -8.328186   0.715449 -11.641  < 2e-16 ***
## male             0.555279   0.109033   5.093 3.53e-07 ***
## age              0.063515   0.006679   9.509  < 2e-16 ***
## education       -0.047767   0.049395  -0.967  0.33353    
## currentSmoker    0.071601   0.156752   0.457  0.64783    
## cigsPerDay       0.017914   0.006238   2.872  0.00408 ** 
## BPMeds           0.162496   0.234326   0.693  0.48802    
## prevalentStroke  0.693660   0.489569   1.417  0.15652    
## prevalentHyp     0.234208   0.138026   1.697  0.08973 .  
## diabetes         0.039167   0.315506   0.124  0.90120    
## totChol          0.002332   0.001127   2.070  0.03850 *  
## sysBP            0.015403   0.003808   4.044 5.24e-05 ***
## diaBP           -0.004159   0.006438  -0.646  0.51831    
## BMI              0.006672   0.012758   0.523  0.60097    
## heartRate       -0.003246   0.004211  -0.771  0.44082    
## glucose          0.007127   0.002234   3.190  0.00142 ** 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 3121.2  on 3657  degrees of freedom
## Residual deviance: 2754.5  on 3642  degrees of freedom
##   (582 observations deleted due to missingness)
## AIC: 2786.5
## 
## Number of Fisher Scoring iterations: 5
```







