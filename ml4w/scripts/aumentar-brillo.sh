#!/bin/bash

# Obtiene el valor actual y máximo de brillo
brillo_actual=$(brightnessctl g)
brillo_maximo=$(brightnessctl m)

# Calcula el incremento de 10% del brillo máximo
incremento=$(($brillo_maximo / 10))
nuevo_brillo=$(($brillo_actual + $incremento))

# Limita el brillo a un máximo del 100%
if [ $nuevo_brillo -gt $brillo_maximo ]; then
    nuevo_brillo=$brillo_maximo
fi

# Establece el nuevo brillo
brightnessctl set $nuevo_brillo

