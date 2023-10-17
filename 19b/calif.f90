program califica
	implicit none
	integer :: n, u, d
	
	write (*,*) "numero:"
	read (*,*) n
	
	u = mod(n,10)
	d = n / 10
	
	select case (d)
		case (1)
			write (*,'(A,$)') "x"
		case (2)
			write (*,'(A,$)') "xx"
		case (3)
			write (*,'(A,$)') "xxx"
		case (4)
			write (*,'(A,$)') "xl"
		case (5)
			write (*,'(A,$)') "l"
		case (6)
			write (*,'(A,$)') "lx"
		case (7)
			write (*,'(A,$)') "lxx"
		case (8)
			write (*,'(A,$)') "lxxx"
		case (9)
			write (*,'(A,$)') "xc"
	end select
	
	
	select case (u)
		case (1)
			write (*,*) "i"
		case (2)
			write (*,*) "ii"
		case (3)
			write (*,*) "iii"
		case (4)
			write (*,*) "iv"
		case (5)
			write (*,*) "v"
		case (6)
			write (*,*) "vi"
		case (7)
			write (*,*) "vii"
		case (8)
			write (*,*) "viii"
		case (9)
			write (*,*) "ix"
	end select

	if (mod(n,10)==0) write (*,*)
	
end program
