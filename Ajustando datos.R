# Generando tablas, filtrando y seleccionando datos - dplyer

# Ajustando datos para mejorar visualizaciones: 

eficientes <- mean(mtcars$mpg)
eficientes

# Uso dplyer (mutate) para armar una nueva columna

mtcars <- mtcars %>%
  mutate (Mas_eficientes = ifelse( mpg < eficientes, # Declaro el tipo de comparación "ifelse" y luego lo que comparo
                                   "bajo promedio", "en o sobre promedio")) # Si cumple la condición primera leyenda sino la segunda

View(mtcars) # Visualizo que ya se agrego la columna deseada

# Otro filtro: Esta vez para los mas veloces

Mas_veloces <- mtcars[mtcars$qsec < 16,] # No olvidar la coma al final ya que indica que seleccione todas las filas u observaciones. 
Mas_veloces # qsec muestra en cuantos segundos recorre el auto 1/4 de milla

Mas_veloces <- mtcars[!mtcars$qsec < 16,] # Puedo negar la condición anterior simplemente agregando un signo de exclamación delante de mtcars
Mas_veloces

mtcars <- mtcars %>%
  mutate (Velocidad_Cuarto_Milla = ifelse( qsec < 16, 
                                   "Menos 16 segs",
                                   "Mas de 16 segs"))

# Agrego columna ahora de peso en kilos. Está en libras actualmente

mtcars <- mtcars %>%
  mutate (Peso_Kilos = (wt/2) * 1000) # Declaro un calculo a aplicar a cada row de mi dataframe en este caso. Sin clausula ifelse

mtcars <- mtcars %>%
  mutate (Peso = ifelse ( Peso_Kilos <= 1500,
                          "Livianos",
                          "Pesados")) # Sobre la columna recien construida hao una nueva donde los clasifico como livianos o pesados 

# Ahora hagamos estos ajustes a nuestro dataset de economía naranja

orangeec <- orangeec %>%
  mutate(Crecimiento_GDP = ifelse(GDP.Growth.. >= 2.5,
                                  "2.5% o más",
                                  "Menos de 2.5%"))

View(orangeec)

orangeec <- orangeec %>%
  mutate(Anaranjados = ifelse(AporteEcNja >= 2.5,
                                  "Más anaranjados",
                                  "Menos anaranjados"))

# Armado de ranking o ordenamiento en función de variables (sort.values en Pandas)

orangeec %>%
  arrange(desc(AporteEcNja))

# Ahora solo me voy a quedar con aquellos que son los top6

TopNaranjas <- orangeec %>%
  filter(Country %in% c("Mexico", "Panama", "Paraguay", "Argentina", "Colombia", "Brazil"))

# Filter es para filtrar observasiones, filas o rows, como prefieramos llamarlas y %in% es un operador para buscar por un conjunto de valores

TopNaranjas

TopNaranjas %>%
  arrange(desc(AporteEcNja))
          