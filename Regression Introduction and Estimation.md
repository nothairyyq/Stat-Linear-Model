# Regression Introduction and Estimation

[TOC]



##  Introduction

### Regression Model

> **Regression** model describes how a variable $x$ influences the value of another variable $y$

- $x$: **Independent** / **Explanatory** variable
- $y$: **Dependent** / **Response** variable

> Linear Regression 是利用**线性回归方程**的最小二乘函数对一个或多个Independent & dependent变量之间关系进行建模的一种回归分析。 这种函数是一个或多个称为回归系数的模型参数的线性组合

回归分析： 了解两个或多个变量间是否相关，相关方向和强度。建立数学模型以便观察特定变量来预测研究者感兴趣的变量。通过回归分析可以由给出的自变量估计因变量的条件期望。

<img src="C:\Users\86133\AppData\Roaming\Typora\typora-user-images\image-20220501131810191.png" alt="image-20220501131810191" style="zoom:50%;" />

### Relations between Variables

- Deterministic: Function Realtion

  $y=f(x)$

  有精确和确定的关系

- Nondeterministic: Statistical Relation

  $y=f(x)+\epsilon$   $\epsilon$ is an unkonwn perturbation(r.v)

  统计关系不是精确的关系，**trend** between the prtedictor $x$ and the response $y$, there is also some **scatter**

  <img src="C:\Users\86133\AppData\Roaming\Typora\typora-user-images\image-20220501164918058.png" alt="image-20220501164918058" style="zoom:50%;" />

### Type of Relation

#### Linear

$y=\beta_{0}+\beta_{1} x$

> - If $\beta_{1}>0$, positive linear relationship
> - If $\beta_{1}<0$, negative linear relationship 

The equation represents a stratight line in the plot.

<img src="C:\Users\86133\AppData\Roaming\Typora\typora-user-images\image-20220501172221711.png" alt="image-20220501172221711" style="zoom:50%;" />



#### Nonlinear

E.g: $f(x)=\log(x), f(x)=x^{2}+x+1$

<img src="C:\Users\86133\AppData\Roaming\Typora\typora-user-images\image-20220501172310819.png" alt="image-20220501172310819" style="zoom: 33%;" />

#### Absense of relation

$f(x)=c$ 	$f(x)$ does not depend on $x$

<img src="C:\Users\86133\AppData\Roaming\Typora\typora-user-images\image-20220501172404696.png" alt="image-20220501172404696" style="zoom: 33%;" />



### Measures of Linear Dependency

#### Covariance

Measure of linear dependency is the ***covariance***.
$$
cov(x,y) = \frac{\sum_{i=1}^{n}(x_{i}- \bar{x})(y_{i}-\bar{y})}{n-1}
$$

- Postive linear relation: $cov(x,y)$ will be positive and large
- Negative linear relation: $cov(x,y)$ will be negative and large in absolute value
- No relation/significantly linear: $cov(x,y)$ will be close to zero

$covariance$ depends on the units of measurement of variables.

#### Correlation Coefficient

Correlation Coefficient $r$ does not depend on the units.
$$
r(x,y) = cor(x,y) = \frac{cov(x,y)}{s_{x}s_{y}}\\
s_{x}^{2}=\frac{\sum_{i=1}^{n}(x_{i}-\bar{x})}{n-1}\\
s_{y}^{2}=\frac{\sum_{i=1}^{n}(y_{i}-\bar{y})}{n-1}\\
$$

> - $cor(x,y)\in [-1,1]$
> - $cor(x,y)=cor(y,x)$
> - $cor(ax+b,cy+d)=sign(a)sign(b)cor(x,y)$



## Simple Linear Regression

The simplest regression model is linear with a single predictor:
$$
y_{i} = \beta_{0}+\beta_{1}x_{i}+\epsilon_{i}
$$

> - $y_{i}$ : the value of the dependent variable for the i-th observation
>
> - $x_{i}$:  the value of the independent variable for the i-th observation
>
> - $\epsilon_{i}$: the error for the i-th observation
>
>   > $E[\epsilon_{i}]=0$  $\sigma[\epsilon]=\sigma^{2}$
>
> - $\beta_{0},\beta_{1}$: parameters / coefficients; intercept, slope

**Goal**: obtain estimates $\hat{\beta_{0}},\hat{\beta_{1}}$ for $\beta_{0},\beta_{1}$ to define regression line:
$$
\hat{y}=\hat{\beta_{0}}+\hat{\beta_{1}}x
$$
Provides the best fit for the data.

**Residual**: the difference between each value $y_{i}$ of the response variable and its estimation $\hat{y_{i}}$
$$
e_{i} = y_{i}-\hat{y_{i}}
$$

### Hypothesis

#### Linearity

> The existing relation between x and y is linear,

$$
f(x) = \beta_{0}+\beta_{1}x
$$

The data have to look reasonably straight

#### Homogeneity

>  The mean value of the error is zero.

$$
E[\epsilon_{i}]=0
$$

#### Homoscedasticity

>  The variance of the error is constant.

$$
Var[\epsilon_{i}]=\sigma^{2}
$$

The dispersion of the data must be constant for the data to be homoscedastic.

<img src="C:\Users\86133\AppData\Roaming\Typora\typora-user-images\image-20220501220144422.png" alt="image-20220501220144422" style="zoom:50%;" />

$b$ is heteroscedastic.



#### Independence

>  The observations are independent

$E[\epsilon_{i}\epsilon_{j}]=0$

- The data must be independent
- An observation must not given information about the rest of the observations
- Time series do not satisfy the independence hypothesis



### Important Features

1. The response $y_{i}$ in the i-th trial is a random variable:

   1. the constant term $\beta_{0}+\beta_{1}x$
   2. the random term $\epsilon$


2. $$
   E[y] = E[\beta_{0} + \beta_{1}x + \epsilon] = \beta_{0} + \beta_{1}x + E[\epsilon] = \beta_{0} + \beta_{1}x
   $$
   
3. $y_{i}$ in the i-th trail exceeds or falls short of the value of the regression function by the error term amount of $\epsilon$
4. $\epsilon_{i}$ and $\epsilon_{j}$ are uncorrelated: $\sigma[\epsilon_{i},\epsilon_{j}]=0$
5. The error terms are assumed to be uncorrelated, so are the responses $y_{i},y_{j}$

## Estimation

Estimation of the regression coefficients and error variance

### Method of Least Squares

> To find good estimators of the regression parameters $\beta_{0},\beta_{1}$: $b_{0},b_{1}$/$\hat{\beta_{0}},\hat{\beta_{1}}$

Seek to minimize: 
$$
Q=\sum_{i=1}^{n}(y_{i}-(\hat{\beta_{0}}+\hat{\beta_{1}}x_{i}))^{2}
$$
Carful choice of $\hat{\beta_{0}},\hat{\beta_{1}}$ are point estimator for $\beta_{0},\beta_{1}$



![image-20220501231435438](C:\Users\86133\AppData\Roaming\Typora\typora-user-images\image-20220501231435438.png)



1. Numerical search procedures

2. Analytical procedures. feasible when the regression model is not mathematically complex
   $$
   b_{1} = \frac{\sum(x_{i}-\bar{x})(y_{i}-\bar{y})}{\sum(x_{i}-\bar{x})}\\
   b_{0} = \frac{1}{n}(\sum{y_{i}}-b_{1}\sum{x_{i}})=\bar{y}-b_{1}\bar{x}
   $$
   

### Max(min)imization

$$
Q=\sum_{i=1}^{n}(y_{i}-(\hat{\beta_{0}}+\hat{\beta_{1}}x_{i}))^{2}
$$

Minimize this by maximing $-Q$

Find partials and set both equal to zero:
$$
\frac{dQ}{db_{0}}=0\\
\frac{dQ}{db_{1}}=0\\
$$

### Normal Equation

> The result of maximization step are called the normal equations

$$
\sum{y_{i}} = nb_{0}+b_{1}\sum{x_{i}}\\
\sum{x_{i}y_{i}}=b_{0}\sum{x_{i}}+b_{1}\sum{x_{i}^{2}}
$$

Solution of the two equations system:
$$
b_{1} = \frac{\sum(x_{i}-\bar{x})(y_{i}-\bar{y})}{\sum(x_{i}-\bar{x})}\\
b_{0} = \frac{1}{n}(\sum{y_{i}}-b_{1}\sum{x_{i}})=\bar{y}-b_{1}\bar{x}
$$


### Estimation of the Variance

- Variance of each observation $y_{i}$ is $\sigma^{2}$ (same for error $\epsilon$)
- Each $y_{i}$ has different probability distribution with different means that depends on the level of $x_{i}$

#### Maximum Likelihood estimator

> The maximum likelihood estimator of $\sigma^{2}$, it is a biased estimator

$$
\hat{\sigma^{2}} =\frac{ \sum_{i=1}^{n} e_{i}^{2}}{n}
$$

#### Residual Variance

> An unbiased estimator of $\sigma^{2}$ is residual variance

$$
S_{R}^{2}=\frac{\sum_{i=1}^{n}({y_{i}-\hat{y}})^{2}}{n-2} =\frac{SSE}{n-2} =MSE
$$

- $MSE$ is an unbiased estimator of $\sigma^{2}$ 

  $E[MSE]=\sigma^{2}$

- The sum of squares SSE has n-2 degrees of freedom



## Apppendix: Sum Theory

$$
\begin{array}{l}
\sum_{i=1}^{m}\left(x_{i}-\bar{x}\right)\left(y_{i}-\bar{y}\right) \\
=\sum_{i=1}^{m}\left(x_{i} y_{i}-x_{i} \bar{y}-{\bar{x}}y_{i}+\bar{x} \bar{y}\right) \\
=\sum_{i=1}^{m} x_{i} y_{i}-\sum_{i=1}^{m} x_{i} \bar{y}-\sum_{i=1}^{m} \bar{x} y_{i}+\sum_{i=1}^{m} \bar{x} \bar{y} \\
=\sum_{i=1}^{m} x_{i} z_{i}-m \bar{x} \bar{y}-m \bar{x} \bar{y}+m \bar{x} \bar{y} \\
=\sum_{i=1}^{m} x_{i} y_{i}-\bar{y} \sum_{i=1}^{m} x_{i}
\end{array}
$$

$$
\begin{array}{l}
\sum_{i=1}^{m}\left(x_{i}-\bar{x}\right)^{2}\\
=\sum_{i=1}^{m}\left(x_{i}^{2}-2 x_{i} \bar{x}+\bar{x}^{2}\right) \\
=\sum_{i=1}^{m} x_{i}^{2}-2 \bar{x} \sum_{i=1}^{m} x_{i}+\sum_{i=1}^{m} \bar{x}^{2}\\
=\sum_{i=1}^{m} x_{i}^{2}-2 m \bar{x}^{2}+m \bar{x}^{2} \\
=\sum_{i=1}^{m} x_{i}^{2}-m \bar{x}^{2}=\sum_{i=1}^{m} x_{i}^{2}-\bar{x} \sum_{i=1}^{m} x_{i}
\end{array}
$$

