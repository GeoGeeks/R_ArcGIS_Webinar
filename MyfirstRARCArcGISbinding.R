
# Carga de paquetes necesarios

library (reshape2)
library(sp)
library(spdep)
library(dplyr)
library(arcgisbinding)



# Inicializar una conexión a ArcGIS para ejecutar el script directamente desde RStudio 
# sin abrir o usar ArcGIS Desktop.
arc.check_product()


# Carga de conjuntos de datos, tablas y capas de ArcGIS en un espacio de trabajo de R.
enrichdf <- arc.open(path="seguridad.gdb\\hotspothomicidiosenriquecido")
enrichdf

columnasDS <- c( 'OBJECTID','SUM_VALUE','TOTPOP','TOTMALES','TOTFEMALES','PAGE02_CY', 'PAGE03_CY', 'PAGE04_CY', 'PAGE05_CY','CS01_CY', 'CS02_CY','CS03_CY', 'CSPC10_CY', 'CS13_CY', 'PP_CY', 'PPPC_CY')

# Cargando un subconjunto del conjunto de datos en un marco de datos R basado en campos especificados.
enrich_select_df <- arc.select(object = enrichdf, fields = columnasDS )
enrich_select_df

# Conversión de un objeto de marco arc.data a un objeto de marco de datos sp.
enrich_spdf <- arc.data2sp(enrich_select_df)
enrich_spdf
colnames(enrich_spdf@data)
enrich_spdf@data <- enrich_spdf@data[enrich_spdf@data$TOTPOP>0,]

# Calcular las tasas de criminalidad suavizadas de Bayes empíricas para cada hexagono.

n <- enrich_spdf@data$SUM_VALUE
x <- enrich_spdf@data$TOTPOP

# La función EBest () R realiza un tipo particular de estimación bayesiana empírica.
EB <- EBest (n, x)
p <- EB$raw

# Parámettos de la función beta
b <- attr(EB, "parameters")$b
a <- attr(EB, "parameters")$a
v <- a + (b/x)
v[v < 0] <- b/x
z <- (p - b)/sqrt(v)
a 
b
EB
z

# Agregar columna de datos a objeto SP
enrich_spdf@data$EB_Rate <- z


# Exportar un objeto de marco de datos a un conjunto de datos de ArcGIS.

arc.write("seguridad.gdb\\hotspothomicidiosenriquecidosuavizado2",enrich_spdf)
