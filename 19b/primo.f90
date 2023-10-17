program primo
	implicit none
	!- programa para decir si un numero es primo o no
	integer :: x
	write (*,*) "numerito:"
	read (*,*) x
	
	write (*,*) x," tiene ",cuantosdiv(x)," divisores"
	if (cuantosdiv(x) == 0) write (*,*) "es un numero primo"
	if (sumadiv(x) == x) write (*,*) "es un numero perfecto"

stop
contains
	integer function cuantosdiv(num)
		integer, intent(in) :: num
		integer :: i, nd
		nd = 0
		do i = 2, num - 1
			if (mod (num,i) == 0) nd = nd + 1
		end do
		cuantosdiv = nd
	end function
	integer function sumadiv(num)
		integer, intent(in) :: num
		integer :: i, nd
		nd = 0
		do i = 1, num - 1
			if (mod (num,i) == 0) nd = nd + i
		end do
		sumadiv = nd
	end function
end program





















