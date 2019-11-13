program jvconway
	use mconway
	implicit none
	integer :: gold(0:101,0:101), gnew(0:101,0:101)
	integer :: nren, ncol, ren, col, sv
	real :: x
	
	gold = 0
	gnew = 0
	
	nren = 24
	ncol = 90
	
	do ren=1, nren
		do col=1, ncol
			call random_number(x)
			gold(ren,col) = nint(x)
		end do
	end do
	
	call escribemat(gold, nren, ncol)
	
	
	do
		do ren=1, nren
			do col=1, ncol
				sv = sumavec(gold, ren, col)
				gnew(ren,col) = regla ( gold(ren,col), sv )
			end do
		end do
		
		call escribemat(gnew, nren, ncol)
		gold = gnew
		gnew = 0
	end do
	
end program



















