library(pwr)
pwr.2p2n.test(
  h = ES.h(20/23, 8/16),
  n1 = 23, n2 = 16,
  sig.level = 0.05, alternative = "two.sided"
)
