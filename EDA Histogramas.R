# EDA con histogramas: Se necesita tener instalado previamente la librería ggplot2

install.packages("ggplot2")
library("ggplot2")

qplot(mtcars$hp,
      geom="histogram",
      xlab="Caballos de fuerza",
      main="Carros según caballos de fuerza",
      bins=30) # Sino declaro los bines me arroja la cantidad de bines mas apropiada segun mi X

# Otra forma de hacer lo mismo usando ggplot es: 

ggplot(mtcars, aes(x=hp))+
  geom_histogram() + # Hasta ahí ya sale el mismo histograma de arriba sin etiquetas
  labs(x= "Caballos de fuerza", y="Cantidad de autos",
       title= "Caballos de fuerza en autos seleccionados")

# La unica ventaja de ggplot para histogramas es que puedo ponerle nombre al eje Y tmb pese a que solo es un recuento por ser un histograma
# Tmb podemos modificar el diseño de nuestro histograma de la siguiente forma: 

ggplot(mtcars, aes(x=hp))+
  geom_histogram() + 
  labs(x= "Caballos de fuerza", y="Cantidad de autos",
       title= "Caballos de fuerza en autos seleccionados")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# Con binwidth= dentro de geom_histogram puedo setear el ancho de mis bines definiendo la cantidad que va a contener cada bin

ggplot(mtcars, aes(x=hp))+
  geom_histogram(binwidth = 30) + 
  labs(x= "Caballos de fuerza", y="Cantidad de autos",
       title= "Caballos de fuerza en autos seleccionados")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# Con bins directamente le indico la cantidad de bins que quiero ver. 

ggplot(mtcars, aes(x=hp))+
  geom_histogram(bins = 5) + 
  labs(x= "Caballos de fuerza", y="Cantidad de autos",
       title= "Caballos de fuerza en autos seleccionados")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# Otra forma de hacer un histograma con ggplot es: 

ggplot()+geom_histogram(data = mtcars,
                        aes(x=hp), fill="blue", color="red", # con fill elijo el color de relleno de mis barras, con color el color de contorno
                        binwidth = 20)+
  labs(x= "Caballos de fuerza", y="Cantidad de autos",
       title= "Caballos de fuerza en autos seleccionados")+
  xlim(c(80,280))+ # Con xlim defino los limites visibles de mi eje x
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# Hagamos ahroa unos histogramas de economía naranja: 

ggplot()+geom_histogram(data = orangeec,
                        aes(x=GDP.PC), fill="blue", color="red", # con fill elijo el color de relleno de mis barras, con color el color de contorno
                        binwidth = 2000)+ # Tamaño de bines de 2000 dolares
  labs(x= "PIB per cápita", y="Cantidad de paises",
       title= "PIB per capita en paises latam")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot()+geom_histogram(data = orangeec,
                        aes(x=AporteEcNja), fill="blue", color="red", # con fill elijo el color de relleno de mis barras, con color el color de contorno
                        binwidth = 1)+ 
  labs(x= "Aporte economía naranja al PIB", y="Cantidad de paises",
       title= "Contribución economía naranja al PIB en paises latam")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot()+geom_histogram(data = orangeec,
                        aes(x=Internet.penetration...population), fill="red", color="yellow", # con fill elijo el color de relleno de mis barras, con color el color de contorno
                        binwidth = 5)+ 
  labs(x= "Penetracion internet (%)población", y="Cantidad de paises",
       title= "Penetración de internet en paises latam")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# Como poner etiquetas de datos de 5 en 5 en el eje x. Con scale_x_continuos

ggplot()+geom_histogram(data = orangeec,
                        aes(x=Internet.penetration...population), fill="red", color="yellow", # con fill elijo el color de relleno de mis barras, con color el color de contorno
                        binwidth = 5)+
  scale_x_continuous(breaks = seq(40,max(100),5))+
  labs(x= "Penetracion internet (%)población", y="Cantidad de paises",
       title= "Penetración de internet en paises latam")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


