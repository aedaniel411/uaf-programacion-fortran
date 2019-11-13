module examen


contains

subroutine escribemat(cri,nr, nc)
		integer, intent(in) :: cri(100,100), nr, nc
		integer :: ren, col
		
		call system("clear") !- para linux
		!call system("cls") !- para windows
		do ren = 1, nr
			do col = 1, nc
				if (cri(ren,col)  /= 0) then
					write (*,'(i3,$)') cri(ren,col)
				else
					write (*,'(a3,$)') " "
				end if
			end do
			write (*,*)
		end do
		write (*,*)
		write (*,*) "Presiona -Enter- para continuar"
		read (*,*)
	end subroutine
	
	integer function cuantosdiv(num)
		integer, intent(in) :: num
		integer :: i, nd
		nd = 0
		do i = 2, num - 1
			if (mod (num,i) == 0) nd = nd + 1
		end do
		cuantosdiv = nd
	end function
	
	logical function esprimo(num)
		integer, intent(in) :: num
		integer :: x
		
		x = cuantosdiv(num)
		
		esprimo = x == 0
	
	end function

end module
