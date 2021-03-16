# Librerías
library(tidyverse)

# Lectura ----
datos <- read_csv("data/hidrocarburos.csv")

# Gráfico del comportamiento ----
ggplot(data = datos)+
  geom_point(mapping = aes(x = hidrocarburos, y = pureza))
  #ggsave("figs/comportamiento.png")

# ANOVA ----
modelo <- lm(formula = pureza ~ hidrocarburos, data = datos)
anova(modelo)
summary(modelo)
confint(modelo, level = 0.95)

# Gráfica de residuos ----
par(mfrow = c(2,2))
plot(modelo)

## Opcional si quieren hacer el histograma de residuos
par(mfrow = c(1,1))
residuos <- as_tibble(residuals(modelo))
ggplot(data = residuos, mapping = aes(x = value))+
  geom_histogram(binwidth = 2, color = "white")
  #ggsave("figs/histograma.png")

# Gráfica de regresión ----
ggplot(data = datos, mapping = aes(x = hidrocarburos, y = pureza))+
  geom_point()+
  geom_smooth(se = FALSE, method = 'lm')
  #ggsave("figs/regresion.png")
