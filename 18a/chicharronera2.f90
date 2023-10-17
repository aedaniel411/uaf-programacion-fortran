program chicharronera
	implicit none
	
	real :: a, b, c
	
	write (*,*) "Dame el valor de A:"
	read (*,*) a
	write (*,*) "Dame el valor de B:"
	read (*,*) b
	write (*,*) "Dame el valor de C:"
	read (*,*) c	
	
	write (*,*) (descri(a,b,c))
	
	if ( descri(a,b,c) >= 0 ) then
		write (*,*) "tiene raiz real"
		write (*,*) "x1 = ", forx1(a,b,c)
	   write (*,*) "x2 = ", forx2(a,b,c)
	else
	   write (*,*) "tiene raiz imaginaria"
	   write (*,*) "x1 = ", cforx1(a,b,c)
	   write (*,*) "x2 = ", cforx2(a,b,c)
	end if
	
	

stop
contains
	real function descri(x, y, z)
		real :: x, y, z
		real :: d
		
		d = y**2 - 4*x*z
		
		descri = d
		
	end function
	
	real function forx1(a,b,c)
		real :: a, b, c
		real :: x1
		x1 = ( -b + ( descri(a,b,c) ) ** (1.0/2.0) ) / (2*a)
		forx1 = x1
	end function
	
	real function forx2(a,b,c)
		real :: a, b, c
		real :: x2
	   x2 = ( -b - ( descri(a,b,c) ) ** (1.0/2.0) ) / (2*a)	
		forx2 = x2
	end function

	complex function cforx1(a,b,c)
		real :: a, b, c
		complex :: x1
		x1 = ( -b + ( descri(a,b,c) ) ** (1.0/2.0) ) / (2*a)
		cforx1 = x1
	end function
	
	complex function cforx2(a,b,c)
		real :: a, b, c
		complex :: x2
	   x2 = ( -b - ( cmplx(descri(a,b,c)) ) ** (1.0/2.0) ) / (2*a)	
		cforx2 = x2
	end function


end program






