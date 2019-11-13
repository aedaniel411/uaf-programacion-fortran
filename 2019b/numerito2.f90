program numerito2
	!- programa para separar un numero en digitos
	!- Daniel Acosta
	implicit none
	integer :: num
	integer :: u, c, n
	integer :: r
	
	!- pedir numero
	write (*,*) "¡Quiero un numero! ¡para hacerlo pedacitos!"
	read (*,*) num
	
	n = num
	r = 1
	
	!- obntener sus unidades
	c = n / 10
	u = mod(n, 10)
	write (*,'(i3, i3, $)') u, r
	call tiponum(r)
	
	do while (c /= 0)
		n = c
		c = n / 10
		u = mod(n, 10)
		r = r + 1
		write (*,'(i3, i3, $)') u, r
		call tiponum(r)
	end do
stop
contains
	subroutine tiponum(num)
		integer, intent (in) :: num
		select case (num)
			case (1)
				write(*,*) "unidad"
			case (2)
				write(*,*) "decenas"
			case (3)
				write(*,*) "centenas"
			case (4)
				write(*,*) "kilos"
			case (5)
				write(*,*) "decenas kilos"
			case (6)
				write(*,*) "centenas kilos"
			case (7)
				write(*,*) "megas"
		end select	
	end subroutine
end program












