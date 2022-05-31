# EDA Boxplot

boxplot(mtcars$hp,
        ylab="Caballos de fuerza",
        main="Caballos de fuerza en autos mtcars")

# Maseratti Bora es el outlier en caballos de fuerza

# Otra forma de hacer un boxplot es con ggplot. Podemos abrir los boxplot por variables categoricas

ggplot(mtcars, aes(x=as.factor(cyl), y=hp, fill=cyl))+ # El boxplot se puede abrir pero por variables categoricas o factoriales
  geom_boxplot(alpha= 0.6)+ # Con alpha = podemos manejar la transparencia y claridad de los colores del fill
  labs(x="cilindros", y="caballos de fuerza",
       title="Caballos de fuerza según cilindros en mtcars")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(x = am, y = mpg, fill = am))+
  geom_boxplot()+
  labs(x = "Tipo de caja", y = "Millas por galon",
       title = "Millas por galón segun tipo de caja - mtcars")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# La variable del tipo de caja la tengo en terminos booleanos pero quiero pasarla categorico entre manual o automatica

mtcars$am <- factor(mtcars$am, levels = c(TRUE, FALSE),
                    labels = c("Manual", "Automatico")) # Factoriza una variable logica para darle contenido o etiquetas



# Boxplots de economía naranja: Como no tenemos en el datasets variables categoricas para abrir el boxplots entonces primero agrupemos paises por su rango de PIB per capita

economy <- mean(orangeec$GDP.PC)
economy # Media de 14052.94

# Para hacer lo siguiente tengo que tener "dplyr" instalado. Yo ya lo tengo. 

orangeec <- orangeec %>%
  mutate(Strong_economy = ifelse(GDP.PC < economy, # Mutate es una función de "dplyr"
                                 "Por debajo promedio pib per capita",
                                 "Sobre-Arriba promedio pib per capita")) # Con esto creo una columna categorica para cruzar mi boxplot

ggplot(orangeec, aes(x = Strong_economy, y = AporteEcNja, fill = Strong_economy ))+
  geom_boxplot(alpha = 0.4)+
  labs(x = "Tipo de pais", y = "Aporte economía naranja al PIB",
       title = "Aporte economía naranja en pib paises latam con alto y bajo pib per capita")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(orangeec, aes(x = Strong_economy, y = Internet.penetration...population, fill = Strong_economy ))+
  geom_boxplot(alpha = 0.4)+
  labs(x = "Tipo de pais", y = "Penetración de internet (%)",
       title = "penetración de internet en paises latam con alto y bajo pib per capita")+
  theme(legend.position = "none") + 
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())



