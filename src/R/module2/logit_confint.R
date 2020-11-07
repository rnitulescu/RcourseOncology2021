ds <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
fit <- glm(admit ~ gre + gpa + rank, data=ds,
           family=binomial(link="logit"))
coefficients(fit)
exp(coefficients(fit))
exp(confint(fit))
AIC(fit)
