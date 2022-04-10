# Soal 5a
distribusiExponensial <- function(x, rate){
  rate * exp(1) ^ (-rate * x)
}
  paste("Jawaban 5a: ", distribusiExponensial(1, 3))

# Soal 5b
set.seed(1)
x <- rnorm(10000, 3, 0.5)
lambda <- 3

hist(distribusiExponensial(x[1:10],  lambda))
hist(distribusiExponensial(x[1:100],  lambda))
hist(distribusiExponensial(x[1:1000],  lambda))
hist(distribusiExponensial(x[1:10000],  lambda))

# Soal 5c
paste("Jawaban 5c: Rataan : ", mean(rexp(100, rate = lambda)), ", varian : ", varian = (sd(rexp(100, rate = lambda))) ^ 2)