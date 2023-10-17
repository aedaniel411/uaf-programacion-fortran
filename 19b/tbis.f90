program bisiesto
	implicit none
	integer :: a, b, i
	
	write (*,*) "dame el año de inicio"
	read (*,*) a
	write (*,*) "dame el año final"
	read (*,*) b
	
	do i = a, b
	
		if (esbis(i)) then
			write (*,*) i
		end if
		
	end do
	
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
