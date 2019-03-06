#2. Escribe un script que pida al usuario un valor mayor de 0 y muestre un mensaje indicando si es par o impar. El script debe asegurar que el valor introducido es correcto, si no, debera´ mostrar un mensaje y volver a pedirlo.

read -p "introduce un valor mayor que 0: " valor1

while [ $valor1 -le 0 ]; do
	read -p "El numero es menor o igual a 0, introduce un numero mayor que 9" valor1
done

if [ $(($valor1%2)) -eq 0 ]; then
	echo "el numero es par"
	
	else 
		echo "el numero es impar"
fi
