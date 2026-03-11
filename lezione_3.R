install.packages("ggplot2")
library("terra")
library(ggplot2) #grafici fighi per R
install.packages("patchwork") 
library(imageRy)
im.list()

b2<- im.import("sentinel.dolomites.b2.tif")
b3<- im.import("sentinel.dolomites.b3.tif")
b4<- im.import("sentinel.dolomites.b4.tif")
b8 <- im.import("sentinel.dolomites.b8.tif")

#c concatena gli elementi, quindi mi creo gli "stack" costituito dai vari layer
#sovrapposti: altro metodo per fare multiframe (oltre a par e im.multiframe)
sentinel <-c(b2,b3,b4,b8)
#1=b2 blu
#2=b3 verde
#3=b4 rosso
#4=b8 infrarosso
plot(sentinel)
#per vedere solo una banda:
plot(sentinel[[4]])

library(patchwork)
p1<- im.ggplot(b8)
p2<-im.ggplot(b4)
#patchwork per vedere i grafici vicini ma funziona solo con ggplot2
p1+p2

#############################################
#plotting by RGB schemes
#1=b2 blu
#2=b3 verde
#3=b4 rosso
#4=b8 infrarosso

#ottengo immagine a colori naturali (nel visibile)
im.plotRGB(sentinel, r=3, g=2, b=1)
# immagine a falsi colori che mi esalta la vegetazione (perchè inserisco l'IR)
im.plotRGB(sentinel, r=4, g=3, b=2)
im.plotRGB(sentinel, r=3, g=4, b=2)
im.multiframe(1,2)

#per fare il grafico delle correlazioni (pairs) tra i colori
pairs(sentinel)

#plotting in RGB via "terra"
plotRGB(sentinel, r=4, g=3, b=2)
#bisogna fare una stretch lineare (aggiustare i valori)
plotRGB(sentinel, r=4, g=3, b=2, stretch = "lin")
#stretch per istogramma (enfatizza i valori medi)
plotRGB(sentinel, r=4, g=3, b=2, stretch = "hist")
#utile per discriminare tanto tra i vari oggetti dell'immagine

#RGB usando ggplot
im.ggplotRGB(sentinel,r=4, g=3, b=2)
