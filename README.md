# R_ArcGIS_Webinar
Este es un repositorio que contiene los códigos y archivos necesarios para el desarrollo del Webinar sobre la integración de R con ArcGIS y la revisión posterior por parte de los espectadores. Lo siguiente fue tomado de la Github Page R-ArcGIS Bridge. [Ver más aquí](https://r-arcgis.github.io/)

## Descargar R y RStudio
Primero, descargará y configurará R y RStudio, un entorno gratuito de desarrollo integrado para R. RStudio le ayuda a trabajar con R al proporcionar una plataforma de codificación con acceso a CRAN, la red integral de archivos de R (Comprehensive R Archive Network), que contiene miles de bibliotecas de R, un visor integrado de diagramas y gráficos y otras funciones útiles. 

## Instalación de R-ArcGIS Bridge
Primero, asegúrese de haber instalado una versión adecuada de R, 3.3.2 o posterior.
Si necesita instalar sin conexión, siga las instrucciones de instalación sin conexión .
El siguiente clip muestra cómo descargar, instalar y verificar la instalación correcta del puente:

![](https://github.com/R-ArcGIS/r-bridge-install/blob/master/img/r-install-from-pyt.gif)

### En ArcGIS 10.3.1+
En la ventana Catálogo , navegue a la carpeta que contiene la caja de herramientas Python, R Integration.pyt. Nota : Es posible que primero deba agregar una conexión de carpeta a la ubicación en la que extrajo los archivos o descargó a través de GitHub.
Abra la caja de herramientas, que debería verse así:

![](https://github.com/R-ArcGIS/r-bridge-install/blob/master/img/r-bridge-install-pro.png)


Ejecute el Install R bindingsscript A continuación, puede probar que el puente es capaz de ver su instalación mediante la ejecución del R Print R Versiony R Installation Detailsherramientas, y la ejecución de los incluidos herramientas de muestra .

### ArcGIS Pro 1.1+

En el panel Proyecto , navegue a una conexión de carpeta que contenga la caja de herramientas de Python o haga clic con el botón derecho en Cajas de herramientas > Agregar caja de herramientas y navegue hasta la ubicación de la caja de herramientas de Python.
Abra la caja de herramientas, que debería verse así:

![](https://github.com/R-ArcGIS/r-bridge-install/blob/master/img/r-bridge-install-pro.png)

Ejecute el Install R bindingsscript A continuación, puede probar que el puente es capaz de ver su instalación mediante la ejecución del R Print R Versiony R Installation Detailsherramientas, y la ejecución de los incluidos herramientas de muestra .
Si todo funcionó, ¡deberías estar listo para comenzar! Vea los siguientes pasos para saber a dónde ir desde aquí. Recuerde, puede actualizar el paquete en cualquier momento ejecutando el script 'Actualizar enlaces R'.

## Instalación fuera de línea
Desde una máquina que tiene acceso a internet:
Descargue este repositorio .
descargue la última versión del paquete arcgisbinding . Al momento de escribir, esto es arcgisbinding_1.0.0.122.zip.
Copie ambos archivos zip en la máquina a la que apunta la instalación fuera de línea. Extraiga el zip r-bridge-install. Coloque el arcgisbinding_1.0.0.122.zipen el mismo directorio que la caja de herramientas de Python "R Integration".
Ejecute el procedimiento de instalación como se indica arriba.

## ¿Problemas de instalación?

Algunas cosas para verificar:
Se han cumplido todos los requisitos previos , como la versión correcta de R para su plataforma y una versión actual de ArcGIS.
Asegúrese de que su usuario tenga acceso de administrador e intente ejecutar ArcGIS como administrador:
Inicie ArcGIS como administrador, haciendo clic derecho en el icono, seleccionando 'Ejecutar como administrador' y luego probando el script
Si eso no funciona, el directorio del paquete, "arcgisbinding", que se instala en la carpeta R (generalmente, C: \ Users <username> \ Documents \ R \ win-library) en el lugar solicitado, C: \ Program Archivos (x86) \ ArcGIS \ Desktop \ Rintegration
En Windows 7, KB2533623 debe estar instalado. Sin esta revisión, la biblioteca generará el error "Se podría ubicar el punto de entrada del procedimiento AddDllDirectory".
La versión se puede instalar manualmente en R, como se muestra en este screencast . Use esto si planea trabajar principalmente desde R.
¿Todavía atascado? Agregue un problema y lo revisaremos . ( Más sobre problemas de GitHub )
Próximos pasos
Recursos adicionales y discusión en el proyecto R-ArcGIS en GeoNet

## ¿Quieres usar herramientas que otros han desarrollado?

Vea cómo se pueden resolver problemas complejos con R y ArcGIS en las Herramientas de muestra , como la agrupación basada en modelos y la combinación de modelos paramétricos y no paramétricos con regresión semiparamétrica.
Consulte la página de la comunidad para obtener más herramientas Próximamente
¿Quieres desarrollar nuevas herramientas con R?

Desarrolle nuevas herramientas basadas en R utilizando el paquete R arcgisbinding, que se describe en la viñeta del paquete . Hay recursos adicionales dentro del repositorio de bridge y la documentación del paquete .

## Créditos
Esta caja de herramientas depende del software de computación estadística R:

Copyright (C) 2015 La Fundación R para la Computación Estadística R es software libre y viene ABSOLUTAMENTE SIN GARANTÍA. Vea el archivo COPYRIGHTS para más detalles.

Esta caja de herramientas depende de ntfsutils:

(c) 2012, la Fundación Mozilla y otros, con licencia bajo la Licencia BSD Simplificada. Vea el archivo de LICENCIA para más detalles.

## Licencia
Apache 2.0
