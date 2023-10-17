program pruebamod
	use asteriscos
	implicit none
	
	integer :: i, n, mayor, menor
	real :: x
	integer :: a(-100:100)
	
	a = 0
	
	do i = 1, 1000
		call random_number(x)
		n = nint(((2*x)-1) * 100)
		a(n) = a(n) + 1
	end do

	do i = -100, 100
		write (*,'(i5,$)') i
		call nasteriscos(a(i)) 
	end do

	mayor = -100
	menor = -100
	
	do i = -100, 100
		if ( a(mayor) < a(i) ) then
			mayor = i
		end if
		if ( a(menor) > a(i) ) then
			menor = i
		end if
	end do
	
	write (*,*) "el mayor es: ", mayor, a(mayor) / 1000.0 * 100.0, "%"
	write (*,*) "el menor es: ", menor, a(menor) / 1000.0 * 100.0, "%"

end program









