program parecito
	implicit none
	
	integer :: n
	
	write (*,*) "numero:"
	read (*,*) n
	
	if (espar(n)) then
		write (*,*) "es un numero par"
	else
		write (*,*) "no es par"
	end if
	
stop
contains

	logical function espar(x)
		integer, intent(in) :: x
		espar = mod(x, 2) == 0
	end function
	
end program
