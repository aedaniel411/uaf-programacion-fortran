program feliz
	implicit none
	
	integer :: n, m, a(100), i

	write (*,*) "numero para saber si es feliz:"
	read (*,*) n
	m = n 
	i = 0
	
	do while ((m /= 1) .and. (.not.(busca(a,i,m) ) ) )
		i = i + 1
		a(i) = m
		!write (*,*) m
		m = sumadigpotencia(m, 2)
	end do
	
	write (*,*) "pasos para saber:" i
stop
contains
!- funcion para buscar un numero en un arreglo
	logical function busca(a, n, x)
		integer, intent(in) :: a(100), n, x
		logical :: existe
		integer :: i
		
		existe = .false.
		do i = 1, n
			existe = existe .or. (a(i) == x)
		end do
		
		busca = existe
	end function

!- funcion para saber el numero de digitos de algun numero
	integer function cuantosdig(num)
		integer, intent(in) :: num
		integer :: n, i
		i = 0
		n = num
		
		do while(n /= 0)
			n = n / 10
			i = i + 1
		end do
		
		cuantosdig = i
		
	end function
	
	!- funcion que sume digitos a una potencia
	integer function sumadigpotencia(num, p)
		integer, intent(in) :: num, p	
		integer :: n, u, suma
		
		suma = 0
		n = num
		
		do while (n /= 0)
			u = mod(n,10)
			n = n / 10
			suma = suma + (u ** p)
		end do
		sumadigpotencia = suma
		
	end function


end program
