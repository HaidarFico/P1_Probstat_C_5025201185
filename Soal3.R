distriBusiPoisson <- function(hari, x, bayiPerHari){
  (exp(1) ^ (-bayiPerHari) * bayiPerHari ^ x / factorial(x) * hari)
}

rata <- 4.5
paste("Jawaban 3a: ",distriBusiPoisson(1, 6, 4.5))

# Jawaban 3b
hist(rpois(365, rata), main = "Jawaban 3b")


# Jawaban 3c: Dari kedua poin sebelumnya, dapat disimpulkan bahwa soal a peluang tersebut dapat digunakan untuk memprediksi soal b.

paste("Jawaban 3d: Rataan : ", rata, ", varian : ", rata)