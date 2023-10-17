program psuma
	implicit none
	integer :: a,b

	call pedirnum(a,b)

	write (*,*) a,"+",b,"=", suma(a,b)
	write (*,*) " el mayor es ", mayor(a,b)
	
stop
contains
	
	integer function mayor(x, y)
		integer, intent(in) :: x, y
		if (x >= y) then
			mayor = x
		else
			mayor = y
		end if
	end function 

	integer function suma(x, y)
		integer, intent(in):: x, y

		!x = x + y No se debe de hacer
		suma = x + y

	end function
	subroutine pedirnum(x,y)
		integer, intent (out) :: x, y
		write (*,*) "numero a:"
		read (*,*) x
	
		write (*,*) "numero b:"
		read (*,*) y
		
	end subroutine
end program
