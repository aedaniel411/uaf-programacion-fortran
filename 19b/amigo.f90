program amigo
	!- programa para decir si un numero es amigo o no, 
	!- si lo es muestra el numero amigo
	!- Daniel Acosta 
	implicit none
	integer :: a, b, c
	
	!- pedir un numero A
	write (*,*) "numero A:"
	read (*,*) a
	
	!- sumar los divisores de A y guardar la suma en B
	b = sumadiv(a)
	
	!- sumar los divisores de B y guardar la suma en C
	c = sumadiv(b)
	
	!- comparar A con C
	if (a==c) then 
	!- 		Si son iguales Ay B son amigos
		write (*,*) a, " es amigo de ", b
	else
	!- 		Si no lo son , no son amigos
		write (*,*) a, " esta triste no tiene amigos"
	end if
stop
contains
	integer function sumadiv(num)
		integer, intent(in) :: num
		integer :: i, suma
		suma = 0
		do i = 1, num - 1
			if (mod (num,i) == 0) suma = suma + i
		end do
		sumadiv = suma
	end function
end program
