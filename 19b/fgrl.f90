program fgrl
	implicit none
	
	real :: a,b,c
	
	write (*,*) "dame el valor de a"
	read (*,*) a
	write (*,*) "dame el valor de b"
	read (*,*) b
	write (*,*) "dame el valor de c"
	read (*,*) c	

	if (esimaginaria(a,b,c)) then
		write (*,*) "Es imaginaria"
	else
		write (*,*) "No es imaginaria"
		write (*,*) "valor de x1 = ", fx1(a,b,c)
		write (*,*) "valor de x2 = ", fx2(a,b,c)
	end if

stop
contains
	logical function esimaginaria(a,b,c)
		real :: a, b, c
		logical :: es
		
		es = (b**2 - 4*a*c) < 0
		esimaginaria = es
	end function

	real function discri (a,b,c)
		real :: a,b,c
		
		discri = (b**2 - 4*a*c)**(0.5)
		
	end function
		
	real function dpos (a,b,c)
		real :: a, b, c
		
		dpos = -b + discri(a,b,c)
		
	end function
	
	real function dneg (a,b,c)
		real :: a, b, c
		
		dneg = -b - discri(a,b,c)
		
	end function
	
	real function fx1(a,b,c)
		real :: a,b,c
		
		fx1 = dpos (a,b,c) / (2*a)
		
	end function
	
	real function fx2(a,b,c)
		real :: a,b,c
		
		fx2 = dneg (a,b,c) / (2*a)
		
	end function
	
end program
