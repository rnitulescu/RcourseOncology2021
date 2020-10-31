library(pwr)
pwr.t2n.test(
  d = 0.8,
  n1 = 23, n2 = 16,
  sig.level = 0.05, alternative = "two.sided"
)
