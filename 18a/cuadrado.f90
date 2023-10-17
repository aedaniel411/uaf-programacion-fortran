program cuadrado
	implicit none
	
	real :: l

	write (*,*) "hola, soy un programa para calcular el area de un cuadrado"
	write (*,*)
	write (*,*) "¿cuál es el lado"
	read (*,*) l
	write (*,*) "área = ", acuadrado(l)
	
stop
contains

	real function arectangulo(x, y)
		real :: x, y
		arectangulo = x * y	
	end function

	real function acuadrado(x)
		real :: x
		acuadrado = arectangulo(x, x)
	end function	
end program

