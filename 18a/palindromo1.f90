program palindromo1
	implicit none

	integer :: i

	do i = 10, 100
		if (mod(i,11) == 0) then
			write (*,*) i
		end if
	end do

end program
		
