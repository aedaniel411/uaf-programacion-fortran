program palindromo
	! Programa para saber si un numero menor a 100 es palindromo
	! Daniel Acosta
	implicit none
	integer :: x
	
	!- pedir numero
	write (*,'(a,$)') "numero: "
	read (*,*) x

	if (mod (x , 11) == 0) then
		write (*,*) "palindromo Si"
	else
		if (x >=0 .and. x<10) then
			write (*,*) "palindromo Si"
		else
			write (*,*) "palindromo NO"
		end if
		
	end if
	
	write (*,*) "numero girado=", girarnum(x)
	
	if (girarnum(x) - x == 0) then
		write (*,*) "es palindromo"
	else
		write (*,*) "no es palindromo"
	end if
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


















