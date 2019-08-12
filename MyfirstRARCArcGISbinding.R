library (reshape2)
library (ggplot2)
library (ggmap)
library(sp)
library(spdep)
library(dplyr)
library(arcgisbinding)

arc.check_product()


enrichdf <- arc.open(path="C:\\R para desarrolladores\\seguridad.gdb\\hotspothomicidiosenriquecido")
enrichdf

columnasDS <- c( 'OBJECTID','SUM_VALUE','TOTPOP','TOTMALES','TOTFEMALES','PAGE02_CY', 'PAGE03_CY', 'PAGE04_CY', 'PAGE05_CY','CS01_CY', 'CS02_CY','CS03_CY', 'CSPC10_CY', 'CS13_CY', 'PP_CY', 'PPPC_CY')

colnames(enrichdf$)
enrich_select_df <- arc.select(object = enrichdf, fields = columnasDS )
enrich_select_df

enrich_spdf <- arc.data2sp(enrich_select_df)
enrich_spdf

plot(enrich_spdf)

colnames(enrich_spdf@data) <- columnasDS
colnames(enrich_spdf@data)
filtrado <- filter(enrich_spdf@data,TOTPOP>0)
head(filtrado)

n <- filtrado$SUM_VALUE
x <- filtrado$TOTPOP
EB <- EBest (n, x)
p <- EB$raw
b <- attr(EB, "parameters")$b
a <- attr(EB, "parameters")$a
v <- a + (b/x)
v[v < 0] <- b/x
z <- (p - b)/sqrt(v)

m <- attr(EB, "parameters")$m
m
a 
b

EB

z

newds <- filtrado
newds$EB_Rate <- z

enrich_spdf@data <- newds
arc.write("C:\\R para desarrolladores\\seguridad.gdb\\hotspothomicidiosenriquecidosuavizado2",enrich_spdf)
