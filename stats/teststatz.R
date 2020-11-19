#R version 3.4.4 

#A study was conducted to determine the proportion of people who dream in black and white instead of color. Among  people over the age of​ 55,  dream in black and​ white, and among  people under the age of​ 25,  dream in black and white. Use a  significance level to test the claim that the proportion of people over 55 who dream in black and white is greater than the proportion for those under 25.
#calculates test statistic and confidence interval
x1 <- 76
n1 <- 317
x2 <- 18
n2 <- 298

zcrit <- 2.326

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