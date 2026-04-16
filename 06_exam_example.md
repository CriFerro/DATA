# Questo sarà il titolo del mio progetto di esame 

L'area di studio L'area di studio L'area di studio L'area di studio L'area di studio L'area di studio 

## Pacchetti utilizzati

Per questo esame ... bla bla ... pacchetti:

``` r
librabry(terra) #pacchetto per miao...
library(multiframe)

```

## Importazione dati

Dati scaricati da [earth observatory] (https://assets.science.nasa.gov/dynamicimage/assets/science/esd/eo/images/iotd/2026/eyeing-the-richat-structure/richatstructure_oli_20260306.jpg?w=1440&h=960&fit=clip&crop=faces%2Cfocalpoint)

Il codice utilizzato è il seguente

Selezioniamo la working directory

```
library(terra)
setwd("...)
getwd()
```

Per importare i dati è stata utilizzata la funzione `rast()` del pacchetto `terra`

```r
richat <- rast("...")
plot(richat)
richat <- flip(richat)
plot(richat)
```
Per inserire l'immagine qui, una volta che l'ho messa nel dekstop la trascino in questa parte di md

## Analisi esplorativa

prima di tutto bla bla.. plottaggio di singole bande

```r
png("bande.png")
im.multiframe(2,1)
plot(richat[[1]])
plot(richat[[2]])
```
QUI INSERISCO DI NUOVO L'IMMAGINE DAL DEKSTOP.

Siccome sono pigro ho usato un ciclo for:
for(i in 1:nlyr(richat)) 

<img width="1440" height="960" alt="richatstructure_oli_20260306" src="https://github.com/user-attachments/assets/83a93dee-c022-489c-b3d2-a978b546cf5c" />
