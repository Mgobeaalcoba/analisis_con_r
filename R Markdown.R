# Es momento de generar nuestro documento con todas las gráficas y observaciones que hemos realizado a nuestro dataset, para ello
# necesitamos instalar el paquete rmarkdown: install.packages("rmarkdown").

# R Markdown nos permite generar archivos en formato HTML, PDF y Word. La mejor opción es trabajar en un formato HTML para 
# compartirlo por internet y posteriormente convertirlo ya sea a PDF o Word.

# Dentro de nuestro archivo de R Markdown iremos escribiendo con sintaxis de markdown el archivo y cuando escribamos código por
# si solo se va a ejecutar y añadir las gráficas o cálculos a nuestro archivo.

install.packages("rmarkdown")
library("rmarkdown")

# Luego debemos instalar el paquete "knitr"

install.packages("knitr")
library("knitr")

# Ahora podemos abrir un file de tipo "R Markdown"

# ```{r} : Es el codigo para abrir un "chunk" o lineas de codigo autoejecutables en un R Markdown
# ``` : Linea de codigo para cerrar el "chunk"

# Una vez terminado mi markdown tengo la opción de publicarlo o verlo en un navegador previamente desde mi markdown
