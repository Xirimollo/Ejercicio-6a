#7. Escribe un script que pida al usuario un valor del d´ıa num´erico del mes (de 1 a 30) y muestre por pantalla qu´e d´ıa de la semana es, asumiendo que el d´ıa 1 es lunes. Para cualquier valor introducido fuera del rango, se mostrara´ un mensaje y se volvera´ a pedir.

read -p "Introduce el dia del mes: " dia
contador=0
while [ $dia -gt 30 -o $dia -lt 1 ]; do
	read -p "Introduce un dia del mes valido: " dia
done
while [ $contador != $dia ]; do

	for i in lunes martes miercoles jueves viernes sabado domingo; do	
		contador=$(($contador+1))
		if [ $dia -eq $contador ]; then 
			echo "$i"
			break
		fi
	done
done
