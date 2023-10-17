program dialogo
   implicit none
	
	character*20 :: estado, nombre
	
	write(*,*) 'Hola,como estas?'
	read (*,*) estado
	
	write(*,*) 'cuál es tu nombre?'
	read (*,*) nombre
	
	write (*,*) 'hola ', trim(nombre), ' me da gusto que te sientas ',trim(estado)
	
	write (*,*) 'sabias que:'
	write (*,*) '10 + 3 =', 10 + 3
	write (*,*) '10 - 3 =', 10 - 3
	write (*,*) '10 * 3 =', 10 * 3
	write (*,*) '10 / 3 =', 10 / 3
	write (*,*) ' 1 / 2 =',   1 / 2
	
	write (*,*) '10.0 / 3.0 =', 10.0Q0 / 3.0q0
	write (*,*) ' 1.0 / 2.0 =',  1.0d0 / 2.0d0
	
end program
