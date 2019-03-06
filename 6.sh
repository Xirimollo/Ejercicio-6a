#6. Escribe un script que pida al usuario la cantidad de litros de agua consumidos y muestre el coste total, atendiendo a las siguientes indicaciones:
#Los primeros 50 litros cuestan 20 euros. Los restantes hasta 200 litros cuestan a 20 c´entimos el litro. Los restantes cuestan a 10 c´entimos el litro.
#El script debe funcionar bien con cualquier valor mayor que 0.


precio=0

read -p "Introduce la cantidad de litros de agua que quieres comprar: " cantidad

if [ $cantidad -ge 50 ]; then
	precio=$(($precio + 20))

	if [ $cantidad -ge 200 ]; then
		precio=$(echo "scale=2; $precio + $(echo "scale=2; 150 * 0.20"|bc)"|bc) 
		
		if [ $cantidad -gt 200 ]; then
			precio=$(echo "scale=2; $precio + $(($cantidad-200)) * 0.10 "|bc)
		fi

		else
			precio=$(echo "scale=2; $precio + $(($cantidad-50)) * 0.20 "|bc)
	fi

	else 
		precio=$(echo "scale=2; $cantidad * $(echo "scale=2; 20/50"|bc)"|bc)

fi



echo "El precio es: $precio"

