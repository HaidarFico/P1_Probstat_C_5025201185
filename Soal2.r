
distribusiBinomial <- function(x, k){
  (factorial(x) / (factorial(x-k) * factorial(k)) * p ^ k * q ^ (x - k))
}

mean <- function(pasien, prob) {
  pasien * prob
}

varian <- function(pasien, prob) {
  pasien * prob * (1-prob)
}

p <- 0.2
totalPasien <- 20

paste("Jawaban soal 2a: ",distribusiBinomial(totalPasien, 4))
hist(rbinom(4, totalPasien, p), main ="Jawaban 2b")
paste("Jawaban 2c: Rataan : ", mean(totalPasien,p), ", varian : ", varian(totalPasien,p))