#r

install fitdistrplus


datos <- read.csv(file.choose(new=FALSE), header=TRUE, sep=",")

datos // prints content

hist(datos$autos, main="histograma", xlab="vehiculos")


libray(MASS) // dependencia
library(survival) // dependencia
libray(fitdistrplus) // carga la libreria


help("distributions")

ajuste <- fitdist(datos$autos, "pois")

plot(ajuste)

prueba <- gofstat(ajuste)

prueba$chisqpvalue // valor de distribucion chi cuadrada

0.82 // se aprueba la hipotesis, es una distribucion poison

ajuste // nos da los parametros del modelo