program espiral
	use examen
	
	implicit none
	integer :: a(100,100), nr, nc
	integer :: x
	integer :: xr, xc
	integer :: ir, ic, lir, lic, lsr, lsc
	
	write (*,*) "cuantos renglones?"
	read (*,*) nr
	
	write (*,*) "cuantas columnas?"
	read (*,*) nc
	
	a = 0
	xr = nr
	xc = nc
	
	ir = 0
	ic = -1
	
	lir = 1
	lic = 1
	lsr = nr
	lsc = nc
	
	do x = nr* nc, 1, -1
		a(xr, xc) = x
		
		xr = xr + ir
		xc = xc + ic
	
		if ((xc == lic) .and. (xr == lsr) .and. (ic == -1)) then
			ic = 0
			ir = -1
			lsr = lsr - 1
		end if
		
		if ((xr == lir) .and. (xc == lic) .and. (ir == -1)) then
			ic = 1
			ir = 0
			lic = lic + 1
		end if
		
		if ((xc == lsc) .and. (xr == lir) .and. (ic == 1)) then
			ic = 0
			ir = 1
			lir = lir + 1
		end if
		
		if ((xr == lsr) .and. (xc == lsc) .and. (ir == 1)) then
			ic = -1
			ir = 0
			lsc = lsc - 1
		end if
	
		
	end do
	call escribemat(a, nr, nc)
	
	
	do xr = 1, nr
		do xc = 1, nc
			if ( .not. esprimo( a(xr,xc) ) ) then
				a(xr,xc) = 0
			end if	
		end do
	end do
	
	call escribemat(a, nr, nc)

end program






