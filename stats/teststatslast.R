#R version 3.4.4 


#calculates test statistic and confidence interval

x1 <- 31
n1 <- 2879
x2 <- 18
n2 <- 7829

#be careful here, two-tailed and one-tailed z are different
zcrit <- 2.33

ph1 <- x1/n1
ph2 <- x2/n2


qh1 <- 1-ph1
qh2 <- 1-ph2

pm <- (x1+x2)/(n1+n2)
qm <- 1 - pm
z <- (ph1-ph2)/(sqrt((pm*qm/n1)+(pm*qm/n2)))
E <- zcrit * (sqrt((ph1 * qh1/n1)+(ph2 * qh2/n2)))

left <- (ph1 - ph2)-E
right <- (ph1 - ph2) +E

print(z)
cat("\n")

print(left)
cat("\n")

print(right)
