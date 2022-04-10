p <- 0.2
z <- 1:5

paste("Jawaban 1a:", dgeom(3, p)) 

# Jawaban 1b
paste("Jawaban 1b: ", mean(rgeom(n = 10000, prob = p) == 3)) 

# Jawaban 1c Dapat dilihat dari dua jawaban tersebut, walaupun n nya sangat berbeda, hasil dari fungsi tersebut sangat mendekati. 

# Jawaban 1d

hist(rgeom(10000, prob = p), xlim = c(0,32))

# Jawaban 1e

meanIn <- function(p) {
  (1/p)
}

varian <- function(p) {
  ((1-p)/p^2)
}

paste("Jawaban 1e: Rataan : ", meanIn(p), ", varian : ", varian(p)) #1b