## OLS Expectation of Estimates

**Theorem**:Assume a <u>simple linear regression model</u> with independent observations
$$
y_{i} = \beta_{0}+\beta_{1}x_{i}+\epsilon_{i},\epsilon_{i}\sim \mathbb{N}(0,\sigma^{2}),i=1,...,n
$$

and consider estimation using <u>ordinary least squares</u>.  Then, the expected values of the estimated parameters are
$$
E(\hat{\beta_{0}})=\beta_{0}\\
E(\hat{\beta_{1}})=\beta_{1}
$$

which means that the [ordinary least squares solution](https://statproofbook.github.io/P/slr-ols) produces [unbiased estimators](https://statproofbook.github.io/D/est-unb).

### Proof

![Proof1](C:\Users\86133\Desktop\DTS206TC\Lec Week3\Proof1.jpg)



## OLS Variance of Estimates

**Theorem**: Assume a <u>simple linear regression model</u> with independent observations
$$
y_{i} = \beta_{0}+\beta_{1}x_{i}+\epsilon_{i},\epsilon_{i}\sim \mathbb{N}(0,\sigma^{2}),i=1,...,n
$$

and consider estimation using <u>ordinary least squares</u>.  Then, the variance of the estimated parameters are
$$
Var(\hat{\beta_{1}})=\frac{\sigma^{2}_{y|x}}{\sum_{i=1}^{n}(x_{i}-\bar{x})^{2}}=\frac{\sigma_{y|x}^{2}}{s_{xx}}=\frac{\sigma_{y|x}^{2}}{(n-1)s_{x}^{2}}\\
Var(\hat{\beta_{0}})=\sigma^{2}_{y|x}(\frac{1}{n}+\frac{\bar{x}^{2}}{\sum{(x_{i}-\bar{x}})^{2}})=\frac{x^{T}x}{n}\frac{\sigma{2}}{(n-1)s_{x}^{2}}
$$


> $$
> s_{xx}=\sum_{i=1}^{n}(x_{i}-\bar{x})^{2} \\
> s_{x}^{2}=\frac{\sum_{i=1}^{n}(x_{i}-\bar{x})^{2}}{n-1}
> $$
>

### Proof

![Proof2](C:\Users\86133\Desktop\DTS206TC\Lec Week3\Proof2.jpg)





## Helpful Properties

$$
Var(y)=E(y^{2})-[E(y)]^{2} \Rightarrow E(y^2)=Var(y)+[E(y)]^{2}\\
Var(cy)=c^{2}Var(y)\\
SE(cy)=|c|SE(y)\\
cov(ax+b,cy+d)=ac\times cov(x,y)\\
var(x+y)=var(x)+var(y)+2cov(x,y)\\
var(x-y)=var(x)+var(y)-2cov(x,y)\\
var(y)=\frac{\sum (y_{i}-\bar{y})^{2}}{n-1}\\
cov(x,y)=\frac{\sum(x_{i}-\bar{x})(y_{i}-\bar{y})}{n-1}\\
r_{x,y}=\frac{cov(x,y)}{SD(x)SD(y)}
$$

