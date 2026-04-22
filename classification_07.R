# R code for classifying data
library(terra)
library(imageRy)

im.list()

sun<-im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

#classificare i tre livelli (num_cluster = 3) dell'immagine sun: 
# classificazione non supervisionata (R sceglie la rappresentazione)
im.classify
sunc <-im.classify(sun, num_cluster = 3)
sunc <-im.classify(sun, num_cluster = 3, seed = 19)
# seed: tra le varie classificazioni possibili, mostrami la 19esima

# GRAN CANYON classification
canyon <-im.import("dolansprings_oli_2013088_canyon_lrg.jpg")
canyonc <- im.classify(canyon, num_clusters = 4, seed=19)

#immagine da internet. Una volta scaricata la metto su R
setwd("cartella\\ miao")
getwd()
list.files()              #nome dei file contenuti nella mia cartella

imm <-rast("nome immagine")
imm <-flip(imm)
plot(imm)
 
immc <- (imm, num_clusters=3)

#mato grosso

# Assign labels
levels(m1992c) <- data.frame(
  value = c(1, 2),
  label = c("forest", "human")
)

# Assign labels
levels(m2006c) <- data.frame(
  value = c(1, 2),
  label = c("forest", "human")
)

#frequenze
freq1992<- freq(m1992c)
prop1992 <- freq1992$count *100 / ncell(m1992c)
perc1992 <-prop1992*100

# creare tabelle (c quando sono due elementi di un vettore)
tab.out <- data.frame(
  class= c("forest", "human")
  perc1992 = c(83,17)
  perc2006= c(45,55)
)


