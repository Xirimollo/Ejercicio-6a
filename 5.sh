#5. Escribe un script que pida al usuario un valor hasta que introduzca el 0. Cuando el usuario introduzca el 0, se mostrar´a un mensaje que muestre la suma total de valores introducidos as´ı como el valor medio

read -p "Introduce un numero: " valor1
suma=$valor1
contador=1
while [ $valor1 != 0 ]; do
	read -p "Introduce otro numero o 0 para dejar de introducir: " valor1
	if [ $valor1 != 0 ]; then
		suma=$(($suma + $valor1))
		contador=$(($contador + 1))
	fi
done

echo "La suma total es: $suma y la media es: $(($suma/$contador))"
