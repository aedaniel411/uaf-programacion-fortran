program aleatorios
	implicit none

	real :: x
	integer :: i, moneda
!	integer, dimension (1) :: seed = (/ 7 /)
!	call random_seed(PUT=seed)	

	call random_seed()

	do i = 1, 10
		call random_number(x)
		
		moneda = anint((x * 10) - 5)
		write (*,*) moneda, x

!		if (moneda == 0) then
!			write (*,*) "aguila", x
!		else
!			write (*,*) "sello", x
!		end if
	end do
end program
