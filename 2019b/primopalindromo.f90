program primopalindromo
	!- programa para saber si un numero es primo Palindromo
	!- Daniel Acosta
	implicit none
	integer :: x
	
	!-Pedir un numero
	write (*,*) "un numerito:"
	read (*,*) x
	
stop
contains
	integer function girarnum(num)
		integer, intent(in) :: num
		integer :: c, r, suma
		
		suma = 0
		c = num
		do while (c /= 0)
			suma = suma * 10
			r = mod(c, 10)
			c = c / 10
			suma = suma + r
		end do
		girarnum = suma
	end function
end program
