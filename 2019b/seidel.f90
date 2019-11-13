program seidel
	implicit none
	real :: A(100,100), b(100), x(100), piv, suma
	integer :: ren, col, n, i
	
	write (*,*) "cuántas ecuaciones?"
	read (*,*) n
	
	do ren = 1, n
		do col = 1, n
			write (*,'(a,i3,a,i3,a,$)') "A(",ren,",",col,")="
			read (*,*) A(ren,col)
		end do
		write (*,'(a,i3,a,$)') "b(",ren,")="
		read (*,*) b(ren)
	end do
	
	x = 0
	
	do i = 1, 10
		do ren = 1, n
			piv = A(ren,ren)
		
			suma = 0
			do col = 1, n
				if (ren /= col) then
					suma = suma + A(ren, col) * x(col)
				end if
			end do
			
			x(ren) = (b(ren) - suma) / piv
			
		end do
	end do
	
	write (*,*) x(1:n)
end program
