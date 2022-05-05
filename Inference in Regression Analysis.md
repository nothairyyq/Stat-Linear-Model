# Inference in Regression Analysis

## Inference in the Normal Error Regresison Model

### Notations

- $\epsilon_{i} \sim N(0,\sigma^{2})$
- $y|x \sim N(\beta_{0+}\beta_{1}x,\sigma^{2})$

- $\sigma^{2}_{y|x} = \sigma^{2}$
- RSS=SSE

> The Residuals Sum of Squares:
> $$
> RSS=\sum_{i=1}^{n}(y_{i}-(\hat{\beta_{0}}+\hat{\beta_{1}}x_{i}))^{2}
> $$

### Normal Error Regression Model Parameters

Each parameter estimates in the regression equation have its own sampling distributions 

- $\hat{\beta_{0}}$ is an unbiased estimate for the Y -intercept, $\beta_{0}$

- $\hat{\beta_{1}}$ is an unbiased estimate for the slope, $\beta_{1}$ 

- $\hat{y}$ is an unbiased estimate for the mean response, $\mu$



### Inference Concerning $\beta_{1}$

Test concerning $\beta_{1}$ (the slope) are often of interest:：
$$
H_{0}: \beta_{1} = 0\\
H_{1}: \beta_{1} \neq 0
$$
The null hypothesis model imply that there is no relationship between y and x:
$$
y_{i} = \beta_{0}+(0)x_{i}+\epsilon_{i}
$$
![image-20220504101743602](C:\Users\86133\AppData\Roaming\Typora\typora-user-images\image-20220504101743602.png)

## Inference Concerning $\beta_{1}$

### Sampling Distribution of $\beta_{1}$ 

> For a normal error regression model, the sampling distribution of $\beta_{1}$ is normal

$$
E\left\{\hat{\beta_{1}}\right\}=\beta_{1}\\
\sigma^{2}\left\{\hat{\beta_{1}}\right\}=\frac{\sigma^{2}_{y|x}}{\sum_{i=1}^{n}(x_{i}-\bar{x})^{2}}=\frac{\sigma_{y|x}^{2}}{s_{xx}}=\frac{\sigma_{y|x}^{2}}{(n-1)s_{x}^{2}}
$$





### Estimated Variance of $\hat{\beta_{1}}$

> When we don't know $\sigma_{y|x}$, using MSE estimate of the sqmple

$$
S_{R}^{2}=MSE=\frac{RSS}{n-2}
$$

where: $RSS=\sum{e_{i}^{2}}$, $e_{i}=y_{i}-\hat{y_{i}}$
$$
\sigma^{2}\left\{\hat{\beta_{1}}\right\}=\frac{\sigma_{y|x}^{2}}{\sum{(x_{i}-\bar{x})^{2}}}\\
s^{2}\left\{\hat{\beta_{1}}\right\}=\frac{s_{R}^{2}}{\sum{(x_{i}-\bar{x})^{2}}}
$$


### Sampling Distribution of $\frac{\hat{\beta_{1}}-\beta_{1}}{\sigma^{2}\left\{\hat{\beta_{1}}\right\}}$

$$
\hat{\beta}_{1}\sim N(\beta_{1},\frac{\sigma_{y|x}^{2}}{\sum{(x_{i}-\bar{x})^{2}}})
$$

As $ n\rightarrow \infty, s^{2}\left\{\hat{\beta_{1}}\right\} \rightarrow  \sigma^{2}\left\{\hat{\beta_{1}}\right\}$

> $\hat{\beta_{1}}$ is normally distribution, $\frac{\hat{\beta_{1}}-\beta_{1}}{\sigma^{2}\left\{\hat{\beta_{1}}\right\}}$ is a standard normal variable

Using the estimate $s^{2}\left\{\hat{\beta_{1}}\right\}$ replace $ \sigma^{2}\left\{\hat{\beta_{1}}\right\}$(unkonwn)
$$
\frac{\hat{\beta_{1}}-\beta_{1}}{s\left\{\hat{\beta_{1}}\right\}} \sim t_{n-2}
$$
Where: $s\left\{\hat{\beta_{1}}\right\} = \sqrt{s^{2}\left\{\hat{\beta_{1}}\right\}},s^{2}\left\{\hat{\beta_{1}}\right\}=\frac{s_{R}^{2}}{\sum{(x_{i}-\bar{x})^{2}}}=\frac{s_{R}^{2}}{(n-1)s_{x}^{2}}$



### Confidence intervals for the slope

> Obtain a confidence interval for $\beta_{1}$ at a $1-\alpha$ level. Since $\sigma^{2}$ is unknown, it will be esitmated using $s_{R}^{2}$

$$
\frac{\hat{\beta_{1}}-\beta_{1}}{\sqrt{\frac{s_{R}^{2}}{(n-1)s_{x}^{2}}}}\sim t_{n-2}
$$

Confidence interval for $\beta_{1}$
$$
\hat{\beta_{1}}\pm t_{n-2,\frac{\alpha}{2}}\sqrt{\frac{s_{R}^{2}}{(n-1)s_{x}^{2}}}
$$
This length of interval will decrease:

- Sample size increase
- Variance of $x_{i}$ increases
- Residual variance decrease

### Hypothesis testing on the slope

> In particular, if the true value of $\beta_{1}$ is zero then y does not depend linearly on $x$

$$
H_{0}:\beta_{1}=0\\
H_{1}:\beta_{1}\neq 0
$$

The rejection region for the null hypothesis is:
$$
\left | \frac{\hat{\beta_{1}}}{\sqrt{\frac{s_{R}^{2}}{(n-1)s_{x}^{2}}}}  \right | > t_{n-2,\frac{\alpha}{2}}
$$


 If the value zero is outside of the CI for $\beta_{1}$ at a $1-\alpha $ level, we reject the null hypothesis at this level. The p-value of the test is:
$$
p-value=2Pr(t_{n-2,\frac{\alpha}{2}}>\left | \frac{\hat{\beta_{1}}}{\sqrt{\frac{s_{R}^{2}}{(n-1)s_{x}^{2}}}}  \right |)
$$




## Inference Concerning $\beta_{0}$

### Sampling Distribution of $\beta_{0}$

When error variance is konown:
$$
E\left\{\hat{\beta_{0}}\right\}=\beta_{0}\\
\sigma^{2}\left\{\hat{\beta_{0}}\right\}=\sigma^{2}_{y|x}(\frac{1}{n}+\frac{\bar{x}^{2}}{\sum{(x_{i}-\bar{x}})^{2}})=\frac{x^{T}x}{n}\frac{\sigma{2}}{(n-1)s_{x}^{2}}
$$
When error variance is unknown
$$
s^{2}\left\{\hat{\beta_{0}}\right\}=s_{R}^{2}(\frac{1}{n}+\frac{\bar{x}^{2}}{\sum{(x_{i}-\bar{x}})^{2}})
$$


### Confidence Intervals for the intercept

The $1-\alpha $ confidence limits for $\beta_{0}$ are obtained in the same manner as those for $\beta_{1}$
$$
\hat{\beta_{0}}\pm t_{n-2,\frac{\alpha}{2}}s\left\{\hat{\beta_{0}}\right\}
$$

$$
\frac{\hat{\beta_{0}}-\beta_{0}}{\sqrt{s_{R}^{2}(\frac{1}{n}+\frac{\bar{x}^{2}}{\sum{(x_{i}-\bar{x}})^{2}})}}\sim t_{n-2}
$$



From it we can obtain a confidence interval for $\beta_{0}$
$$
\hat{\beta_{0}}\pm t_{n-2,\frac{\alpha}{2}}\sqrt{s_{R}^{2}(\frac{1}{n}+\frac{\bar{x}^{2}}{\sum{(x_{i}-\bar{x}})^{2}})}
$$
This length of interval will decrease:

- Sample size increase
- Variance of $x_{i}$ increases
- Residual variance decrease
- The mean of the independent observations decreases











