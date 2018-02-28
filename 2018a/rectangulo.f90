program rectangulo
	implicit none
	
	real :: b, h

	write (*,*) "hola, soy un programa para calcular el area de un rectangulo"
	write (*,*)
	write (*,*) "¿cuál es la base"
	read (*,*) b
	write (*,*) "¿cuál es la altura?"
	read (*,*) h
	
	write (*,*) "área = ", arectangulo(b, h)
	
stop
contains

	real function arectangulo(x, y)
		real :: x, y
		
		arectangulo = x * y	
	end function
	
end program

