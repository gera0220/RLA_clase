# Lo primero que se necesitará hacer será instalar el paquete "Tidyverse" con
# install.packages("tidyverse")
# esto para cargar las herramientas necesarias para trabajar.

# Creación de datos ----

library(tidyverse) 
pureza <- c(86.91, 89.85, 90.28, 86.34, 92.58, 87.33, 86.29, 91.86, 95.61, 89.86,
            96.73, 99.42, 98.66, 96.07, 93.65, 87.31, 95, 96.85, 85.20, 90.56)
hidrocarburos <- c(1.02, 1.11, 1.43, 1.11, 1.01, 0.95, 1.11, 0.87, 1.43, 1.02, 
                   1.46, 1.55, 1.55, 1.55, 1.40, 1.15, 1.01, 0.99, 0.95, 0.98)
datos <- as_tibble(cbind(pureza, hidrocarburos))

# Datos a disco ----

write_csv(datos, "data/hidrocarburos.csv")
