#!/bin/bash

# Obtiene el valor actual y máximo de brillo
brillo_actual=$(brightnessctl g)
brillo_maximo=$(brightnessctl m)

# Calcula la disminución de 10% del brillo máximo
decremento=$(($brillo_maximo / 10))
nuevo_brillo=$(($brillo_actual - $decremento))

# Limita el brillo a un mínimo de 1%
if [ $nuevo_brillo -lt 1 ]; then
    nuevo_brillo=1
fi

# Establece el nuevo brillo
brightnessctl set $nuevo_brillo
