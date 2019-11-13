program ugly
	implicit none
	integer :: a, b
	integer :: n, m
	
	write (*,*) "limite inferior?"
	read (*,*) a
	write (*,*) "limite superior?"
	read (*,*) b
	
	do n = a, b
		m = n
		do while ((m /= 1 ) .and. divisible(m))
			do while (mod(m,2) == 0) 
				m = m / 2
			end do
			do while (mod(m,3) == 0) 
				m = m / 3
			end do
			do while (mod(m,5) == 0) 
				m = m / 5
			end do
		end do
		if (m == 1) write (*,*) n
	end do

stop
contains
	logical function divisible(x)
		integer, intent (in) :: x
		logical :: r
		
		r = mod (x, 2) == 0
		r = r .or. (mod(x, 3) == 0)
		r = r .or. (mod(x, 5) == 0)
		
		divisible = r
	end function
end program
