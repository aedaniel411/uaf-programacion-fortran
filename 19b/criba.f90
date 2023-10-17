program criba
	implicit none
	integer :: ren, col
	integer :: x
	integer :: m(10,10)
	
	x = 0
	do ren = 1, 10
		do col = 1, 10
			x = x + 1
			m(ren,col) = x 
		end do
	end do

	call escribemat(m)
	
	do x = 2, 10
		do ren = 1, 10
			do col = 1, 10
				if ((m(ren,col) > x) .and. (mod(m(ren,col),x)==0)) then
					m(ren,col) = 0
				end if 
			end do
		end do
	
		call escribemat(m)
	end do
	
	
stop
contains
	subroutine escribemat(cri)
		integer, intent(in) :: cri(10,10)
		integer :: ren, col
		
		call system("clear") !- para linux
		!call system("cls") !- para windows
		do ren = 1, 10
			do col = 1, 10
				if (cri(ren,col)  /= 0) then
					write (*,'(i3,$)') cri(ren,col)
				else
					write (*,'(a3,$)') " "
				end if
			end do
			write (*,*)
		end do
		write (*,*)
		write (*,*)
		write (*,*) "Presiona -Enter- para continuar"
		read (*,*)
	end subroutine
end program
