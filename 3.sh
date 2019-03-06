#3. Escribe un script que pida al usuario una nota y muestre un mensaje de la caliﬁcacio´n que tiene (suspendido, aprobado, bien, notable o sobresaliente). El script debe asegurar que el valor introducido es correcto, si no, deber´a mostrar un mensaje y volver a pedirlo.

read -p "Introduce una nota" valor1

while [ $valor1 -lt 0 ]; do
	read -p "El numero es menor a 0, introduce un numero mayor o igual que 0" valor1
done

if [ $valor1 -lt 5 ]; then
	echo "Suspendido"
	
	else if [ $valor1 -eq 5 ]; then
		echo "suficiente"
		
	else if [ $valor1 -eq 6 ]; then
		echo "bien"
	
	else if [ $valor1 -lt 9 ]; then
		echo "notable"
	else
		echo "sobresaliente"

	fi
	fi
	fi
fi

