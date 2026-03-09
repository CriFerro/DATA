2 + 3

# oggetti e assegnazione
michele <- 2 + 3
michele

tecla <- 4 + 6

# tutte le operzioni
michele + tecla
michele ^ tecla
michele / tecla

# arrays o vettori
sonia <- c(10, 8, 3, 1, 0)   # funzione e argomenti
giorgia <- c(3, 10, 20, 50, 100)

plot(giorgia, sonia)
plot(giorgia, sonia, col="blue", pch=19)
plot(giorgia, sonia, col="blue", pch=19, cex=2)
plot(giorgia, sonia, col="blue", pch=19, cex=2, xlab="pollution", ylab="numero di delfini")

# installazione pacchetti
# CRAN
install.packages("terra")
library(terra)

# GitHUb
install.packages("devtools") # remotes
library(devtools)  # remotes
install_github("ducciorocchini/imageRy")
library(imageRy)
im.list()

library(devtools)
library(viridis)
im.list()

# Sentinel-2 bands
# https://gisgeography.com/sentinel-2-bands-combinations/
b2<-im.import("sentinel.dolomites.b2.tif")
#cambiare colori
cl<-colorRampPalette(c("lightsalmon", "yellow", "mediumpurple1"))(100)
plot(b2,col=cl)

par(mfrow=c(1,2))
plot(b2, col=inferno(100))
plot(b2, col=cl)