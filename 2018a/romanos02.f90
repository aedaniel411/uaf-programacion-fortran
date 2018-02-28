program romanos2
	implicit none
	
	integer :: x
	
	write (*,*) "numero a convertir a romano"
	read (*,*) x
	
	call romano (x)
	
stop
contains

	subroutine romano(n)
		integer :: n
		
		select case(n)
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
			case (10)
				write (*,*) "x"
			case default
				write (*,*) "numero no defindo"
		end select
		
	end subroutine	
	
end program
