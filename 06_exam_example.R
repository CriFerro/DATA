library(terra)
library (imageRy)
setwd("C:\\Users\\crist\\OneDrive\\Desktop\\Telerilevamento")
getwd()
richat <- rast("...")
plot(richat)
richat <- flip(richat)

png("figura.png")
plot(richat)
# in questo modo il plot me lo trovo direttamente sul dekstop

png("bande.png")
im.multiframe(2,1)
plot(richat[[1]])
plot(richat[[2]])

# chiedi a chatGPT di farti dei codici per costruire degli istogrammi per le 3 bande 
