module asteriscos
	
contains

	subroutine nasteriscos(n)
		integer :: n
		integer :: i
		
		do i = 1, n
			write (*,'(a,$)') "*"
		end do
		write (*,*)
	end subroutine

end module
