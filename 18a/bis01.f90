program bis
	implicit none
	integer :: a
	
	write (*,*) "dame un año"
	read (*,*) a
	
	if (mod (a,100) == 0) then
		write (*,*) "divisible entre 100"
		if (mod(a,400) == 0) then
			write (*,*) "divisible entre 400"
			write (*,*) " si es bis"
		else
			write (*,*) "No lo es"
		end if
	else 
		if (mod (a,4) == 0) then
			write (*,*) "divisible entre 4"
			write (*,*) "si es bisiesto"
		else
			write (*,*) "No es"
		end if
	end if
end program
