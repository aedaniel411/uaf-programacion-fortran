program Espiral
implicit none

	integer :: a(100,100), nr, nc
	integer :: x, i, j
	integer :: xr, xc
	integer :: ir, ic, lir, lic, lsr, lsc
	
	
	write (*,*) "¿Cuántos renglones tiene la matriz?"
	read (*,*) nr
	
	nc = nr
	
	
	
	
	a = 0 !(se escriben espacios vacíos donde hay ceros)
	xr = nr
	xc = nc
	

	
	ir = 0
	ic = -1
	
	lir = 1
	lic = 1
	lsr = nr
	lsc = nc
	
	do x = nr * nr, 1, -1
		a(xr, xc) = x
		xr = xr + ir
		xc = xc + ic
		
		if  ((xc == lic) .and. (xr == lsr) .and. (ic == -1)) then
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
		
		call escribemat (a, nr, nr)
	end do 
	do i = 1, nr
		do j = 1, nr
		if	(primo(a(i,j)) /= 0) then
			a(i,j) = 0
		end if
		end do
	end do	
	write (*,*) "DAle a enter "
	read(*,*)	
	call escribemat0 (a , nr, nr)	
	
stop
contains

	integer function primo (x)
	integer, intent(in) :: x
	integer :: s, d
	d = 0
			do s = 2, x-1
				if (mod(x,s) == 0) d = d + 1
			end do
		primo = d
	end function
	
	subroutine escribemat (cri, nr, nc)
		integer, intent (in) :: cri(100,100), nr, nc
		integer :: ren, col
		
		call system ("clear")
		do ren = 1, nr
			do col = 1, nc
				if (cri(ren, col) /= 0) then
					write (*,'(i3,$)') cri(ren, col)
				else
					write (*,'(a3,$)') " "
				end if
			end do
			write (*,*)
		end do

		write (*,*)
		
	end subroutine
	subroutine escribemat0 (cri, nr, nc)
		integer, intent (in) :: cri(100,100), nr, nc
		integer :: ren, col
		
		
		do ren = 1, nr
			do col = 1, nc
				if (cri(ren, col) /= 0) then
					write (*,'(i3,$)') cri(ren, col)
				else
					write (*,'(a3,$)') " "
				end if
			end do
			write (*,*)
		end do

		write (*,*)
		
	end subroutine
end program
