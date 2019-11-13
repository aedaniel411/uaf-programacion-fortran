program vectores
	implicit none
	
	real :: v1m, v1d
	real :: v2m, v2d
	real :: vrm, vrd
	
	write (*,*) "vector 1 magnitud"
	read (*,*) v1m
	
	write (*,*) "vector 1 direccion"
	read (*,*) v1d
	
	write (*,*) "vector 2 magnitud"
	read (*,*) v2m
	
	write (*,*) "vector 2 direccion"
	read (*,*) v2d
	
	write (*,*) "magnitud res:", magres(compox(v1m,v1d),compox(v2m,v2d),compoy(v1m,v1d),compoy(v2m,v2d) )
	write (*,*) "direccion res:",dirres(compox(v1m,v1d),compox(v2m,v2d),compoy(v1m,v1d),compoy(v2m,v2d) )
	
stop
contains

	real function grados2radianes(x)
		real :: x
		real :: pi
		
		pi = 4.0 * atan(1.0)	
		
		grados2radianes = x * pi / 180	
	end function

	real function radianes2grados(x)
		real :: x
		real :: pi
		
		pi = 4.0 * atan(1.0)	
		
		radianes2grados = x * 180.0 / pi	
	end function

	
	real function compox(m,d)
		real :: m, d
		
		compox = m * cos( grados2radianes(d) )
	end function
	
	real function compoy(m,d)
		real :: m, d
		
		compoy = m * sin( grados2radianes(d) )
	end function
	
	real function magres(x1,x2,y1,y2)
		real :: x1,x2,y1,y2
		real :: xr, yr

		xr = x1 + x2
		yr = y1 + y2
		
		magres = (xr**2.0 + yr**2.0)**(0.5)

	end function
	
	real function dirres(x1,x2,y1,y2)
		real :: x1,x2,y1,y2
		real :: xr, yr

		xr = x1 + x2
		yr = y1 + y2
		
		dirres = radianes2grados(atan2 (yr,xr))

	end function
end program


























