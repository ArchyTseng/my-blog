---
title: "Coursera - IBM Ai Engineering 03"
date: 2025-06-05T21:12:14+04:00
lastmod: 2025-06-05T21:12:14+04:00
draft: false
slug: "IBM-ai-engineering-03"
tags: ["selfstudy", "ai", "coursera", "ibm"]
categories: ["coursera"]
description: ""
author: "Archy Tseng"
series: ["IBM AI Engineering"]
series_order: 3
---
{{< katex >}}
## Today's Study Note
### 1. Introduction to Multiple linear regression
#### 1.1 purpose of learning
- Describe Multiple linear regression
- Compare Multiple linear regression and simple linear regression
- List the pitfalls of multiple linear regression
#### 1.2 What is Multiple Linear Regression
- Extension of simple linear regression
- Formula:  \\(\hat{y} = \theta^{T} \mathbf X\\)
- Require independent variables
#### 1.3 Comparison
- MLR better model than SLR
- Too many features make it easy to overfit
#### 1.4 "What-if" scenario Pitfalls
- Inaccurate findings:
  - considering impossible scenario
  - extrapolating scenario
  - model might depend on a group of correlated or colinear variables
#### 1.5 Solution to correlation Pitfalls
- Remove redundant variables
- select variables which are:
  - Most understood
  - Controllable
  - Most correlated with target
#### 1.6 Recap
- The most common methods to estimate multiple regression parameters are ordinary **least square**(Loss Function) and **optimization with random values**(Gradient Descent)
## Reference
[GO TO >> ]({{< ref "" >}})