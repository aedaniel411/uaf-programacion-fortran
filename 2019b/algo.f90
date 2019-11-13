program algo
	implicit none
	write (*,*) f()
stop
contains
	integer function f()
		integer :: i, j
		integer :: suma1, suma2
		suma2 = 0
		do i = 1, 3
			suma1 = 0
			do j = 1, 4
				suma1 = suma1 + (i * j)
			end do
			suma2 = suma2 + (suma1)
		end do	
		f = suma2
	end function
end program
