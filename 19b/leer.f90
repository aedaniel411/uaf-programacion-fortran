program leer
	implicit none
	
	integer :: a, b, c
	real :: x1, x2, raiz, u1, u2, w
	
	write (*,*) "Dame el valor de A:"
	read (*,*) a
	write (*,*) "Dame el valor de B:"
	read (*,*) b
	write (*,*) "Dame el valor de C:"
	read (*,*) c
	
	raiz = b**2 - 4*a*c
	raiz = raiz ** 0.5
	u1 = -b + raiz
	u2 = -b - raiz
	w = 2 * a
	x1 = u1 / w
	x2 = u2 / w

	write (*,*) x1, x2
		
end program
