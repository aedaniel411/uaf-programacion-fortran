module mconway
	
contains
	integer function sumavec(m, r, c)
		integer, intent(in) :: m(0:101,0:101), r, c
		integer :: i, j, suma 
		
		suma = 0
		do i = r -1, r +1
			do j = c -1, c + 1
				suma = suma + m(i,j)
			end do
		end do
		
		sumavec = suma - m(r,c)
		
	end function
	
	integer function regla(e, s)
		integer, intent(in) :: e, s
		
		if (e == 0) then
			!- muerta
			if (s == 3) then
				!- nace
				regla = 1
			else
				!- muerta
				regla = 0
			end if
		else
			!- viva
			if ( (s==2) .or. (s==3) ) then
				!- sigue viva
				regla = 1
			else
				!- muere
				regla = 0
			end if
		end if
		
	end function
	
	subroutine escribemat(cri,nr, nc)
		integer, intent(in) :: cri(0:101,0:101), nr, nc
		integer :: ren, col
		
		call system("clear") !- para linux
		!call system("cls") !- para windows
		do ren = 1, nr
			do col = 1, nc
				if (cri(ren,col)  /= 0) then
					write (*,'(a1,$)') "*"
				else
					write (*,'(a1,$)') " "
				end if
			end do
			write (*,*)
		end do
		call system("sleep 0.3")
	end subroutine
	
	subroutine escribemat2(cri,nr, nc)
		integer, intent(in) :: cri(0:101,0:101), nr, nc
		integer :: ren, col
		
		call system("clear") !- para linux
		!call system("cls") !- para windows
		do ren = 1, nr
			do col = 1, nc
				if (cri(ren,col)  /= 0) then
					write (*,'(i1,$)') cri(ren,col)
				else
					write (*,'(a1,$)') " "
				end if
			end do
			write (*,*)
		end do
		call system("sleep 1")
	end subroutine
end module
