program lanzamoneda
	implicit none
	integer :: i, j, n, mayor, menor
	real :: x = (0, 1)
	
		integer :: a(-100:100)
	
		
		a = 0

		do i = 1, 10
			call random_number(x) 
		if (x >.5) then
				write (*,*) "sello"
			else 
				write (*,*) "aguila"
			end if
		end do
	
	

	
end program
