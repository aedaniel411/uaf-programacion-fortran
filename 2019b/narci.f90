program narcisista
	implicit none
	integer :: a, nd, suma

	!- pedir un numero A
	write (*,*) "numero a"
	read (*,*) a
		
	!- nd toma el valor del numero de digitos de A
	nd = cuantosdig(a)
	
	!- sumar los digitos a la potencia nd
	suma = sumadigpotencia(a, nd)
	
	!- si la suma es igual a A es un numero narcisista
	if (a == suma) then
		write (*,*) "numero narcisista"
	else
		write (*,*) "no es narcisista"
	end if
stop
contains

	!- funcion para saber el numero de digitos de algun numero
	integer function cuantosdig(num)
		integer, intent(in) :: num
		integer :: n, i
		i = 0
		n = num
		
		do while(n /= 0)
			n = n / 10
			i = i + 1
		end do
		
		cuantosdig = i
		
	end function
	
	!- funcion que sume digitos a una potencia
	integer function sumadigpotencia(num, p)
		integer, intent(in) :: num, p	
		integer :: n, u, suma
		
		suma = 0
		n = num
		
		do while (n /= 0)
			u = mod(n,10)
			n = n / 10
			suma = suma + (u ** p)
		end do
		sumadigpotencia = suma
		
	end function

end program








