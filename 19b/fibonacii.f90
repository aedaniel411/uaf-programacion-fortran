program fibonacii
	implicit none
	integer :: n, i
	
	write (*,*) "cuantos numeros de fibonacii?"
	read (*,*) n
	
	do i = n, 1, -1
		write (*,*) nfibo(i)
	end do
stop
contains
	integer function nfibo(n)
		integer, intent(in) :: n
		integer :: i
		integer :: a, b, c
		a = 0
		b = 1
		
		if (n == 1) nfibo = a 
		if (n == 2) nfibo = b
		
		if (n > 2) then
			do i = 3, n
				c = a + b
				a = b
				b = c
			end do
			nfibo = c
		end if
	end function
end program








