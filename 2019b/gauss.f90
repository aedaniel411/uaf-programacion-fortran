program gauss
	implicit none
	real :: a(100, 101), piv, x
	integer :: m, n !- para el numero de ec.
	integer :: i, j, p
	
	open (unit=17, file='datos1.txt', status='old')
	
	read (17,*) m
	read (17,*) n
	
	do i = 1, m
		do j = 1, m + 1
			! write (*,'(a,i3,a,i3,a,$)') "A(",i,",",j,")="
			read (17,*) a(i,j)
		end do
	end do
		
	call mostrarmat(a, m)
	
	do p = 1, m
		piv = a(p,p)
		
		do j = 1, m + 1
			a(p, j) = a(p, j) / piv
		end do
		
		do i = 1, m
			if (i /= p) then
				x = a(i,p) 
				do j = 1, m + 1
					a(i,j) = a(i,j) - x*a(p,j)
				end do
			end if
		end do
		call mostrarmat(a, m)
	end do
	
	close(17)
stop
contains
	subroutine mostrarmat(a, m)
		real, intent(in) :: a(100,101)
		integer :: i, j, m
		
		write (*,*)
		write (*,*)
		do i = 1, m
			do j = 1, m + 1
				write (*, '(f7.3, $)') a(i,j)
			end do
			write(*,*)
		end do
		read(*,*)
	end subroutine
end program
