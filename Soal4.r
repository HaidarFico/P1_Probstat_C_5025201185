x = 2
v = 10

fx = dchisq(x, v)
paste("Jawaban 4a: ", fx)

hist(rchisq(100, v), main = "Jawaban 4b")

paste("Jawaban 4c: Rataan : ", v, ", varian : ", 2 * v)

