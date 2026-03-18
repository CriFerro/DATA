library(terra)
library(imageRy)
library(viridis)
im.list()

#importing data
mato1992 <-im.import("matogrosso_l5_1992219_lrg.jpg")
mato1992<-flip(mato1992)
#l1= NIR, l2=RED, l3=GREEN
im.plotRGB(mato1992, r=1, g=2, b=3)
im.plotRGB(mato1992, r=2, g=1, b=3) #per esaltare la vegetazione
im.plotRGB(mato1992, r=2, g=3, b=1) #per esaltare il suolo nudo
mato2006<-im.import("matogrosso_ast_2006209_lrg.jpg")
mato2006<-flip(mato2006)
im.plotRGB(mato2006, r=1, g=2, b=3)

#Exercise: plot the two images one besides the 
im.multiframe(1,2)
im.plotRGB(mato1992, r=1, g=2, b=3)
im.plotRGB(mato2006, r=1, g=2, b=3)

im.multiframe(1,2)
im.plotRGB(mato1992, r=3, g=2, b=1)
im.plotRGB(mato2006, r=3, g=2, b=1)

#DVI
# riflettanza tra 0-100
#NIR alto tipo 100 red=0
#DVI_t0= NIR-RED = 100-0
#DVI_t1= 40-10 = 30 (pianta meno in salute)

#l1= NIR, l2=RED, l3=GREEN
dvi1992=mato1992[[1]] - mato1992[[2]]
dvi2006=mato2006[[1]] - mato2006[[2]]
plot(dvi1992)
plot(dvi2006)
im.multiframe(1,2)

plot(dvi1992,col=inferno(100))
plot(dvi2006,col=inferno(100))
im.multiframe(1,2)

# DVI (risoluzione radiometrica(oltre a spaziale(dimensione pixel), spettrale(numero di bande)
#radiometrica: bit. 
#8 bit -> 0-255
#DVI=NIR-RED = 255-0 = 255 maX DVI
#DVI -> 0-255 = -255 min DVI 

#2 bit -> 0-3
#DVI=NIR-RED = 3-0 = 3 max DVI
#DVI -> 0-3 = -3 min DVI
###################
#altro indice: NDVI
#8 bit -> 0-255
#NDVI=NIR-RED/NIR+RED = (255-0)/(255+0) = 1 maX DVI
#NDVI -> (0-255)/(0+255)= -1 min DVI 

#2 bit -> 0-3
#nDVI=NIR-RED = 3-0/3+0 = 1 max DVI
#DVI -> 0-3/0+3 = -1 min DVI
# NDVI serve a comporare immagine con risoluzione radiometrica diversa
ndvi1992 = dvi1992/(mato1992[[1]] + mato1992[[2]])
ndvi2006 = dvi2006/(mato2006[[1]] + mato2006[[2]])

im.multiframe(2,2)
plot(dvi1992)
plot(dvi2006)
plot(ndvi1992)
plot(ndvi1992)

?im.dvi
#DVI e NDVI con imageRy
dvi1992=im.dvi(mato1992, 1,2)
dvi1992=im.dvi(mato1992, 1,2)
