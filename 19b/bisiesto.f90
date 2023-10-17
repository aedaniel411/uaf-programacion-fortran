program bisiesto
	implicit none
	integer :: x
	write (*,*) "dame un año"
	read (*,*) x
	
	if (esbis(x)) then
		write (*,*) "es bisiesto"
	else
		write (*,*) "no es bisiesto"
	end if
stop
contains
	logical function esbis(n)
		integer, intent(in) :: n
		logical :: p, q, r
		p = mod (n, 4) == 0
		q = mod (n, 100) == 0
		r = mod (n, 400) == 0
		
		esbis = p .and. ((.not.(q)) .or. r)
		
	end function
end program
