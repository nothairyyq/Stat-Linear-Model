# Prediction and Estimation

**Population Confidence Interval:** description of the variability in the underlying population(usually the central $95\%$ of the population), generally estimated from large samples of individuals

## Expected Mean $\hat{\mu}_{y|x_{0}}$

> In regression, we assume that the underlying mean changes according to the level of an explanatory variables.

The expected mean $\mu$ for a given value of $x$, in the underlying population is :
$$
\hat{\mu}_{y|x_{0}}=\hat{\beta_{0}}+\hat{\beta_{1}}x_{0}
$$
The standard error of the estimate
$$
SE(\hat{\mu}_{y|x_{0}})=\sqrt{\frac{\hat{\sigma^{2}}_{y|x}}{n}+\frac{\hat{\sigma^{2}}_{y|x}}{n-1}(\frac{(x_{0}-\bar{x})^{2}}{\hat{x}^{2}})}
$$

## Prediction $\hat{y}|x_{0}$

> The predicted value of y for a given value of x,say x0,for a randomly selected individual from the underlying population is

$$
\hat{y}|x_{0}=\hat{\beta_{0}}+\hat{\beta_{1}}x_{0}
$$

The standard error is:
$$
SE(\hat{y}|x_{0})=\sqrt{\hat{\sigma^{2}}_{y|x}+\frac{\hat{\sigma^{2}}_{y|x}}{n}+\frac{\hat{\sigma^{2}}_{y|x}}{n-1}(\frac{(x_{0}-\bar{x})^{2}}{\hat{x}^{2}})}
$$

- The variance of the distribution of $y$ at $x = x_{0}$, namely $\hat{\sigma^{2}}_{y|x}$

- The variance of the sampling distribution of $y_{0}$ , namely $Var(\hat{\mu}_{y|x_{0}})$



## Confidence Intervals and Prediction Intervals

Confidence Interval: A $95\%$ confidence interval describes the variability in the estimate of the underlying mean:
$$
\hat{\mu}_{y|x_{0}}\pm t_{n-2,0.975}SE(\hat{\mu}_{y|x_{0}})
$$
Prediction Interval: A $95\%$ prediction interval describes the variability in the underlying population

$$
\hat{y}|x_{0}\pm t_{n-2,0.975}SE(\hat{\mu}_{y|x_{0}})
$$
