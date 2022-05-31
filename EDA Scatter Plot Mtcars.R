# EDA Scatter Plot Mtcars: No necesitamos paquetes adicionales a R para realizar scatter plot

plot(x = mtcars$mpg,y = mtcars$cyl,
     xlab = "millas por galon", ylab = "cilindros",
     main = "Relación cilindros y millas por galón") # Funciona si defino los parametros por asignación como si solo los escribo al igual que pandas. 

# xlab e ylab se usan para poner nombres a los ejes. main para poner nombre al gráfico. 

plot(x = mtcars$mpg,y = mtcars$hp,
     xlab = "millas por galon", ylab = "caballos de fuerza",
     main = "Relación caballos de fuerza y millas por galón")

# EDA Orangeec

plot(orangeec$Unemployment, orangeec$Education.invest...GDP,
     xlab = "Desempleo", ylab = "Peso del presupuesto para educación sobre PIB",
     main = "Desempleo en función del peso del presupuesto para educación sobre PIB")

# Otra forma de hacer un scatter pero invirtiendo el orden de los ejes, primero declaro Y y luego X es así: 

plot(orangeec$Education.invest...GDP ~ orangeec$Unemployment,
     xlab = "Desempleo", ylab = "Peso del presupuesto para educación sobre PIB",
     main = "Desempleo en función del peso del presupuesto para educación sobre PIB")

plot(orangeec$GDP.PC ~ orangeec$AporteEcNja ,
     xlab = "Aporte economía naranja al PIB(%)", ylab = "PIB per capita",
     main = "Relación Economía Naranja y PIB per capita")

# Scatter Plot con ggplot2

ggplot(mtcars, aes(x= hp, y= mpg))+
  geom_point()+
  labs(x= "Caballos de fuerza", y= "Millas por galón",
       title = "Relación caballos de fuerza y millas por galón")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(x= wt, y= hp))+
  geom_point()+
  labs(x= "Peso", y= "Potencia",
       title = "Relación peso-potencia")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(x= hp, y= qsec))+
  geom_point(aes(color=am, size=cyl))+ # Quiero que el color de las etiquetas varia en función de los tipos de am y el tamaño en función de cyl
  labs(x= "caballos de fuerza", y= "Tiempo en 1/4 de milla",
       title = "Caballos-velocidad según cilindraje y tipo de caja") # No le quitamos el fondo gris porque no sirve acá para contraste

# Exploremos con Scatter plot de ggplot el dataset de economía naranja

ggplot(orangeec, aes(x= Internet.penetration...population, y= AporteEcNja))+
  geom_point(aes(color=Strong_economy, size=GDP.Growth..))+ # Quiero que el color de las etiquetas varia en función de los tipos de am y el tamaño en función de cyl
  labs(x= "Penetración internet", y= "Aporte economía naranja al PIB",
       title = "Internet y aporte de economía naranja segun economía y crecimiento PIB") # No le quitamos el fondo gris porque no sirve acá para contraste

# Necesidad: Pasar el mouse y que me indique de que pais se trata sobre el scatter plot. Para esto necesitamos installar "plotly"

install.packages("plotly")
library("plotly")

# Forma para ver el nombre del pais directamente al pasar el cursor sobre el punto

my_graph <- ggplot(orangeec, aes(x=Internet.penetration...population,
                                 y=AporteEcNja,
                                 label=Country))+
  geom_point()+
  labs(x="Penetración internet",
       y="Aporte de economía naranja",
       title="Internet y aporte de economía naranja")

my_graph # Corro la grafica pero aún no veo nada. Debo guardar la variable en otra usando ggplotly

my_graph = ggplotly(my_graph)
my_graph

# Forma para ver el numero de row al pasar el cursor sobre el punto

my_graph <- ggplot(orangeec, aes(x=Internet.penetration...population,
                                 y=AporteEcNja,
                                 label=row.names(orangeec)))+
  geom_point()+
  labs(x="Penetración internet",
       y="Aporte de economía naranja",
       title="Internet y aporte de economía naranja")

my_graph # Corro la grafica pero aún no veo nada. Debo guardar la variable en otra usando ggplotly

my_graph = ggplotly(my_graph)
my_graph

