program calculadora
	implicit none
	
	integer :: primer, segundo
	
	write (*,'(A,$)') "dame el primer numero?= "
	read (*,*) primer
	
	write (*,*) "dame el segundo numero?"
	read (*,*) segundo
	
	write (*,*) "suma ", primer + segundo
	write (*,*) "resta ", primer - segundo
	write (*,*) "multi ", primer * segundo
	write (*,*) "divi ", primer / segundo
	write (*,*) "residuo", mod(primer, segundo)
	write (*,*) "potencia ", primer ** segundo
end program
