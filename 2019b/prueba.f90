program prueba
	implicit none 
	
	integer :: a(10), b(10)
	
	a=0
	b=1
	
	a=b
	
	b(2)=3
	
	write (*,*) b
	write (*,*) "-"
	write (*,*) a
	
end program
