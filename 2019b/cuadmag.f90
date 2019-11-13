program cuadmag
	!- programa para construir cuadros magicos de dimension impar
	!- Daniel Acosta
	implicit none
	integer :: x, n, ren, col, m(100,100)
	!-Pedir dimension
	write (*,*) "dimension:"
	read (*,*) n
	
	m = 0 !- llena de ceros el arreglo
	
	ren = n
	col = (n + 1) / 2
	
	do x = 1, n*n
		m(ren,col) = x
	
		if (mod(x,n)==0) then
			ren = ren + 1
		else
			ren = ren - 1
			col = col + 1
		end if	
		
		if (col > n) col = 1
		if (ren < 1) ren = n
		if (ren > n) ren = 1
		
		call escribemat(m,n) 
	end do
	
	open(unit=69, file='cuadro.txt', status='new')
	
	do ren = 1, n
		do col = 1, n
			write (69,'(i4,$)') m(ren,col)
		end do
		write (69,*)
	end do
	
	close(69)
	
stop
contains
subroutine escribemat(cri, n)
		integer, intent(in) :: cri(100,100), n
		integer :: ren, col
		
		call system("clear") !- para linux
		!call system("cls") !- para windows
		do ren = 1, n
			do col = 1, n
				if (cri(ren,col)  /= 0) then
					write (*,'(i4,$)') cri(ren,col)
				else
					write (*,'(a4,$)') " "
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

