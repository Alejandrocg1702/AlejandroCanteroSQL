# AlejandroCanteroSQL
📚 README – Proyecto de Análisis de Datos (Sakila SQL → Python)
Data Analyst | Limpieza, Procesamiento y Visualización
🏷️ Descripción del Proyecto

Este proyecto realiza un flujo completo de datos desde SQL hasta Python, utilizando la base de datos Sakila, una base realista diseñada para prácticas de análisis de datos.

El objetivo principal es:

Extraer datos mediante múltiples JOINs en SQL.
Realizar una limpieza preliminar en SQL.
Importar el dataset a Python para una limpieza avanzada, análisis exploratorio y visualización.
Exportar un dataset limpio y preparado para análisis futuros.
El dataframe elegido para la limpieza completa es:

DataFrame 1 – Actividad de clientes, formado por:

customer
address
city
country
rental
payment


Este dataset permite estudiar el comportamiento de los clientes, pagos, duración de alquileres y tráfico de la tienda.

🛠️ Tecnologías y Librerías Usadas
🔵 SQL (MySQL / Workbench / DBeaver)

JOINs entre tablas principales

Eliminación de registros incoherentes
Estandarización de texto
Limpieza preliminar (rental completados, pagos válidos)

🟣 Python – Google Colab

pandas – limpieza y manipulación
numpy – cálculos numéricos
matplotlib – visualizaciones básicas
seaborn – visualizaciones estadísticas
missingno – análisis de valores nulos
plotly – gráficos interactivos

📁 Estructura del Proyecto
/sql/
   extracción.sql
   limpieza_preliminar.sql

/notebooks/
   limpieza_y_analisis.ipynb

/data/
   customer_modify.csv          ← exportado desde SQL
   customer_activity_clean.csv  ← dataset final limpio

README.md

🧼 Proceso de Limpieza en Python

Carga de librerías (pandas, numpy, plotly, seaborn…).
Análisis de valores nulos (tablas + gráfico con missingno).
Revisión de duplicados.
Normalización de cadenas (lower, trim).
Corrección de tipos numéricos (amount, customer_id, etc.).
Detección de outliers
Se observó que la mayoría de pagos están entre 3–5 dólares.
Pagos superiores a 8–12 dólares son infrecuentes (outliers).
Distribución del monto pagado
Histograma para entender precios y su frecuencia.

Duración del alquiler

Se concentra entre 2 y 4 días, comportamiento típico del sector.

Gráficas temporales

Actividad por día
Actividad por hora
Media de días de alquiler por fecha
Exportación del dataset limpio (customer_activity_clean.csv)

📊 Resumen Analítico de las Principales Visualizaciones
🔵 1. Distribución del monto pagado (amount)

La mayoría de pagos están entre 3 y 5 dólares.

Algunos pagos aislados (8–12$) se detectan como outliers naturales, posiblemente por retrasos o recargos.

Esto ayuda a comprender la política de precios y el comportamiento de los clientes.

🟢 2. Duración del alquiler (rental_duration_days)

Fuerte concentración entre 2 y 4 días, lo cual es totalmente coherente con un videoclub clásico.

Los alquileres muy largos son extremadamente raros.

Permite analizar hábitos de consumo.

🟣 3. Tráfico y rotación de alquileres

Se analizaron los alquileres por día y por hora.

Esto permite identificar: días con mayor movimiento, horas de mayor flujo, posibles oportunidades para promociones.

🟠 4. Duración media del alquiler por día

Muestra qué días tienen mayor retención de películas.

Utilizable para: ajustar políticas, promociones basadas en días clave, planificar campañas de ventas cruzadas (chucherías, 2x1, packs, etc.).

🟡 5. Ventas generadas por día

Permite identificar: días con mayor facturación, días débiles con oportunidad de incremento, estacionalidad del negocio.

Es útil para establecer objetivos de mejora o estrategias comerciales.

🎯 Conclusiones del Análisis

El dataset es coherente, limpio y apto para análisis de negocio.

Se identificaron patrones claros en: pagos, duración del alquiler, comportamiento temporal del cliente.

Los datos permiten tomar decisiones estratégicas como: promociones específicas, ajustes de precios, ventas cruzadas, captación de nuevos clientes.




