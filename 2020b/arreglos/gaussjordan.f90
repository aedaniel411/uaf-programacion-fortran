program gaussjordan
        use mescritura
	implicit none
	integer :: n, ren, col, ec
	real :: a(10, 11), piv
	
	write(*,*) "cuantas ecuaciones?"
	read (*,*) n
	
	do ren = 1, n
		do col = 1, n + 1
			write (*,'(a,i2,a,i2,a,$)') "m[",ren,",",col,"]:"
			read (*,*) a(ren,col)
		end do
	end do
	
	do ec = 1, n
		piv = a(ec,ec)
		do col = 1, n + 1
			a(ec,col) = a(ec,col) / piv
		end do
		
		do ren = 1, n
			if (ren /= ec) then
				!- hacer ceros
				piv = a(ren, ec)
				do col = 1, n+ 1
					a(ren, col) = a(ren, col) - (a(ec,col) * piv)
				end do
			end if 
		end do
	end do
	
        call escribe_mat(a, n, n+1) 
end program






