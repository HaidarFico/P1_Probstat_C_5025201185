Laporan Praktikum Probabilitas Statistika

Haidar Fico Ramadhan Aryputra
5025201185
Probstat C

 - Soal 1
	 - 1a
		 -  Soal pertama dikerjakan dengan memasukkan fungsi dgeom
Lalu memasukkan 3 dan 0.2 untuk argumen-argumen. Dari soal tersebut mendapatkan jawaban yaitu: 
```[1] "Jawaban 1a: 0.1024```

	-	1b
		- Soal kedua dikerjakan dengan menggunakan fungsi mean dalam fungsi rgeom. Kode sebagai berikut:
		``` paste("Jawaban 1b: ", mean(rgeom(n = 10000, prob = p) == 3)``` 
		Membuahkan hasil: `[1] "Jawaban 1b:  0.1014"`
	- 1c
		- Dapat dilihat dari dua jawaban tersebut, walaupun n nya sangat berbeda, hasil dari fungsi tersebut sangat mendekati. 
	- 1d
		-  Histogram dapat didapat dengan menggunakan fungsi hist sebagai berikut:
		- ``hist(rgeom(10000, prob = p), xlim = c(0,32)) ``
		- Akan mendapatkan hasil berupa:
		- ![1d](https://github.com/HaidarFico/P1_Probstat_C_5025201185/blob/master/Foto/Foto1d.png)

	- 1e
		- Soal ini dikerjakan menggunakan 2 fungsi yaitu meanIn dan varian. Sebagai berikut: 
		``meanIn <- function(p) {
  (1/p)
}``
``varian <- function(p) {
  ((1-p)/p^2)
}``
Menghasilkan:
``[1] "Jawaban 1e: Rataan :  5 , varian :  20"``
- Soal 2
	- 2a
		- Soal ini dikerjakan dengan fungsi distribusiBinomial yang sebagai berikut:
		``distribusiBinomial <- function(x, k){
  (factorial(x) / (factorial(x-k) * factorial(k)) * p ^ k * q ^ (x - k))
}``
Membuahkan hasil sebagai berikut:
``[1] "Jawaban soal 2a:  0.218199401946101"``
	- 2b
		- Menggunakaan fungsi rbinom, dengan input berupa:
		- ``hist(rbinom(4, totalPasien, p), main ="Jawaban 2b")``
		- Akan mendapatkan:
		- ![2b](https://github.com/HaidarFico/P1_Probstat_C_5025201185/blob/master/Foto/foto2b.png)
	- 2c
		- Fungsi mean dan varian sebagai berikut:
		 ``mean <- function(pasien, prob) {
  pasien * prob
}``
``varian <- function(pasien, prob) {
  pasien * prob * (1-prob)
}``
Membuahkan hasil:
``[1] "Jawaban 2c: Rataan :  4 , varian :  3.2"``
- Soal 3
	- 3a
		- Menggunakan function distriBusiPoisson, yaitu:
		``distriBusiPoisson <- function(hari, x, bayiPerHari){
  (exp(1) ^ (-bayiPerHari) * bayiPerHari ^ x / factorial(x) * hari)
}``
Dengan fungsi ini, mendapatkan hasil:
``[1] "Jawaban 3a:  0.128120143864584"``
	- 3b
		- Menggunakan fungsi rpois dengan input berupa 365 hari dan 4.5 bayi. Dengan input berupa
		- ``hist(rpois(365, rata), main = "Jawaban 3b")``
		- Akan membuahkan hasil
		- ![3b](https://github.com/HaidarFico/P1_Probstat_C_5025201185/blob/master/Foto/foto3b.png)
	- 3c
			- Dari kedua poin sebelumnya, dapat disimpulkan bahwa soal a peluang tersebut dapat digunakan untuk memprediksi soal b.
	
	- 3d
		- Untuk distribusi poisson, rerata dan varian dianggap sama, sehingga memiliki nilai yang sama. Oleh karena itu, memiliki hasil sama dengan rata-rata bayi: ``[1] "Jawaban 3d: Rataan :  4.5 , varian :  4.5"`` 
- Soal 4
	- 4a
		- Distribusi chi-square dapat dikerjakan dengan menggunakan fungsi dchisq lalu memasukkan nilai x dan v ke dalam argumen-argumennya:
		``fx = dchisq(x, v)``
		Sehingga, dapat membuahkan hasil:
		``[1] "Jawaban 4a:  0.00766415502440505"``
	-	4b
		-	Histogram dapat dibuat dengan menggunakan fungsi hist yang akan melacak mungshi rchisq. Dari input berupa:
		``hist(rchisq(100, v), main = "Jawaban 4b")``
		Akan mendapatkan hasil berupa:
		![4b](https://github.com/HaidarFico/P1_Probstat_C_5025201185/blob/master/Foto/foto4b.png)
	- 4c
		- Untuk distribusi chi-square, rerata merupakan v dan varian merupakan 2v, sehingga:
		``[1] "Jawaban 4c: Rataan :  10 , varian :  20"``
- Soal 5
	- 5a
		- Untuk pengerjaan soal ini, dibuat fungsi distribusi Eksponensial sebagai berikut:
		``distribusiExponensial <- function(x, rate){
  rate * exp(1) ^ (-rate * x)
}``
Sehingga, untuk soal 5a dengan argumen sebagai:
``paste("Jawaban 5a: ", distribusiExponensial(1, 3))
``
akan mendapatkan hasil
``[1] "Jawaban 5a:  0.149361205103592"``
	- 5b
		- Untuk soal ini pertama membuat random number dengan kode sebagai berikut 
		``set.seed(1)``
		``x <- rnorm(10000, 3, 0.5)``
		- Lalu menggunakan hist dengan list number tersebut untuk menghasilkan:
		![5bOne](https://github.com/HaidarFico/P1_Probstat_C_5025201185/blob/master/Foto/foto5bOne.png)
        ![5bTwo](https://github.com/HaidarFico/P1_Probstat_C_5025201185/blob/master/Foto/Foto5bTwo.png)
        ![5bThree](https://github.com/HaidarFico/P1_Probstat_C_5025201185/blob/master/Foto/Foto5bThree.png)
        ![5bFour](https://github.com/HaidarFico/P1_Probstat_C_5025201185/blob/master/Foto/foto5bFour.png)
	- 5c
		- Soal ini menggunakan fungsi rexp dan mean untuk mendapatkan nilai rerata dan varian. Dimasukkan argumen berupa lambda = 3 dan total n = 100
		``paste("Jawaban 5c: Rataan : ", mean(rexp(100, rate = lambda)), ", varian : ", varian = (sd(rexp(100, rate = lambda))) ^ 2)``
		Mendapatkan hasil
		``[1] "Jawaban 5c: Rataan :  0.353578479745558 , varian :  0.111310197198117"
``
- Soal 6
	- 6a
		- Soal ini dapat menggunakan fungsi rnorm di dalam R. Dengan menggunakan kode sebagai berikut:
		- ``plot(rnorm(n, rerata, sd))``
		- Akan menghasilkan:
		- ![6a](https://github.com/HaidarFico/P1_Probstat_C_5025201185/blob/master/Foto/foto6a.png)
	- 6b
		- Menggunakan fungsi hist sebagai berikut:
		- ``hist(rnorm(n, rerata, sd), main="5025201185_Haidar Fico Ramadhan Aryputra_Probstat_C_DNhistogram", breaks=25)``
		-  Akan menghasilkan:
		- ![6b](https://github.com/HaidarFico/P1_Probstat_C_5025201185/blob/master/Foto/foto6b.png)
	- 6c
		- Varian merupakan standar deviasi kuadrat, sehingga:
		- ``paste("Soal 6c, varian: ", sd^2)``
		- Akan menghasilkan:
		- ``[1] "Soal 6c, varian:  64"``

