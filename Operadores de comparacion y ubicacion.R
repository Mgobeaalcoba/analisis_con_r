# == # Igual
# != # Distinto
# < # Menor
# <= # Menor o igual
# > # Mayor
# >= # Mayor o igual
# | # O - disyuntiva
# & # Y - Conjuntiva
# ! # No - Negación
# %in% # Que esté en el dataset

# Uso de los operadores para filtrar datasets:

mtcars[mtcars$cyl<6,] # La coma es clave para que entienda que quiero que me filtre todo el dataset
mtcars[mtcars$vs == TRUE,]
mtcars[mtcars$cyl<6 | mtcars$cyl>6 ,] # Con el | sumo un nuevo argumento por la disyuntiva
mtcars[mtcars$cyl<6 & mtcars$vs == TRUE ,] # Con el & sumo un nuevo argumento por la conjuntiva 

# Ahora filtremos y trabajemos sobre el otro dataframe

orangeec[orangeec$GDP.PC >= 15000 ,] # Filtro de PBI per capita mayor o igual a 15.000 dolares
orangeec[orangeec$Creat.Ind...GDP <= 2 ,] # Paises cuya economía naranja aporte menos del 2% del PIB
# Costa Rica y Ecuador

# Otra forma de filtrar es armando subset´s:
subset(orangeec, Internet.penetration...population > 80 
       & Education.invest...GDP >= 4.5) # En este caso veré el recorte pero no lo estoy guardando.

neworangeec <- subset(orangeec, Internet.penetration...population > 80 
                      & Education.invest...GDP >= 4.5) # En este caso guardo el subset en un nuevo dataframe
neworangeec

# Puedo hacer el mismo filtro con subsets pero seleccionando solo determinadas columnas de mi dataset. ¿Como? Con select = 

neworangeec <- subset(orangeec, Internet.penetration...population > 80 
                      & Education.invest...GDP >= 4.5,
                      select = Creat.Ind...GDP) # En este caso guardo el subset en un nuevo dataframe
neworangeec

# Para seleccionar mas de una columna con subset debo usar un contenedor c

neworangeec <- subset(orangeec, Internet.penetration...population > 80 
                      & Education.invest...GDP >= 4.5,
                      select = c(Country, Creat.Ind...GDP)) # En este caso guardo el subset en un nuevo dataframe

# Para renombrar una columna en un dataframe debo usar la librería "plyr"

install.packages("plyr") # Instalo plyr
library(plyr) # Llamo a la librería

orangeec <- rename(orangeec,c('Creat.Ind...GDP' = 'AporteEcNja')) # Sino guardo el cambio en el dataset solo veo el cambio en la impresión del momento. 
orangeec # Cambio impactado
