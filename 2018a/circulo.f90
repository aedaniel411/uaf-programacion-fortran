program circulo
	implicit none
	
	real :: r

	write (*,*) "hola, soy un programa para calcular el area de un circulo"
	write (*,*)
	write (*,*) "¿cuál es el radio?"
	read (*,*) r
	write (*,*) "área = ", acirculo(r), (4.0) * atan (1.0D0) 
	
stop
contains
	real function acirculo(x)
		real :: x
		real :: pi = (4.0) * atan (1.0)
		acirculo = x**2 * pi
	end function

	real function atriangulo(x, y)
		real :: x, y
		atriangulo = arectangulo(x, y) / 2
	end function
	
	real function arectangulo(x, y)
		real :: x, y
		arectangulo = x * y	
	end function

	real function acuadrado(x)
		real :: x
		acuadrado = arectangulo(x, x)
	end function	
end program

