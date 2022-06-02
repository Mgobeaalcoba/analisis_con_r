# Viendo mas información con facet wrap

# Los ordeno

mtcars_orderby_pesados <- mtcars %>% 
  arrange(desc(Peso_Kilos))

# Hago un filter de los 4 primeros para reemplazar el filtro manual con %in% que vimos antes

Mas_pesados <- filter(mtcars_orderby_pesados[1:4,])
Mas_pesados

# Vamos a graficar ahora un scatter plot para nuestro recorte

ggplot(Mas_pesados, aes(x=hp, y=mpg))+
  geom_point()+
  facet_wrap(~model) # Me genera un scatter por cada modelo. Pero en este caso no sirve. Ya que solo tengo un punto en cada Scatter plot

ggplot(mtcars, aes(x=cyl, y=mpg, size=Peso))+
  geom_point()+
  facet_wrap(~am)

ggplot(mtcars, aes(x=cyl, y=mpg, size=Peso_Kilos))+
  geom_point()+
  facet_wrap(~am)

# Vamos ahora a ver visualizaciones abiertas con facet_wrap para economía naranja

ggplot(TopNaranjas, aes(x= Internet.penetration...population,
                        y= Services...GDP,
                        size = GDP.PC))+
  geom_point()+
  facet_wrap(~Country)

ggplot(TopNaranjas, aes(x= Education.invest...GDP,
                        y= AporteEcNja,
                        size = Unemployment))+
  geom_point()+
  facet_wrap(~Country)

# Vamos a ponerle color a nuestras visualizaciones

install.packages("RColorBrewer")
library("RColorBrewer")

MyColor <- brewer.pal(9,"Reds") # Defino una paleta de colores una vez instalada la libreria 

ggplot(TopNaranjas, aes(x= Internet.penetration...population,
                        y= GDP.PC,
                        fill = AporteEcNja))+
  geom_tile()+ # Revisamos otro tipo de grafica
  facet_wrap(~Country)+
  scale_fill_gradientn(colors = MyColor)

