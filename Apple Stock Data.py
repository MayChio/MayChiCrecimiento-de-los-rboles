import pandas as pd

import matplotlib.pyplot as plt


# Ruta al archivo CSV

csv_path = r"C:\Users\MAYRA ROCIO\Downloads\archive\apple_stock.csv"


# Cargar el dataset

# Mostrar las primeras filas
print("Primeras filas del dataset:")
print((pd.read_csv(csv_path)).head())


# Información general del dataset
print("\nInformación general del dataset:")
print((pd.read_csv(csv_path)).info())


# Gráfico básico de los precios históricos

plt.figure(figsize=(12, 6))

plt.plot(pd.to_datetime((pd.read_csv(csv_path))['Date']), (pd.read_csv(csv_path))['Close'], label="Precio de cierre")

plt.title("Tendencia Histórica de las Acciones de Apple")

plt.xlabel("Fecha")

plt.ylabel("Precio (USD)")

plt.legend()

plt.grid()

plt.show()

