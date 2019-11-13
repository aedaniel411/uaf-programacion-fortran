program saludo
	implicit none 
	
	complex :: a, b

	a = 1.5
	b = 2.5

	write (*,*) a ** b
	write (*,*) a / b
	write (*,*) a * b
	write (*,*) a - b
	write (*,*) a + b

end program 
