#1. Escribe un script que pida al usuario dos valores, mostrando un mensaje de cua´l es el mayor o de si son iguales.
read -p "Introduce el valor 1: " valor1
read -p "Introduce el valor 2: " valor2

if [ $valor1 -eq $valor2 ]; then
	echo "Los dos valores son iguales"

	else if [ $valor1 -lt $valor2 ]; then
		echo "$valor2 es mayor que $valor1"

		else 
			echo "$valor1 es mayor que $valor2"
	fi
fi
