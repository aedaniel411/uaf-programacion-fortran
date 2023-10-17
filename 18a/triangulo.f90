program triangulo
	implicit none
	
	real :: b, h

	write (*,*) "hola, soy un programa para calcular el area de un triangulo"
	write (*,*)
	write (*,*) "¿cuál es la base?"
	read (*,*) b
	write (*,*) "¿cuál es la altura?"
	read (*,*) h
	write (*,*) "área = ", atriangulo(b,h)
	
stop
contains
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

