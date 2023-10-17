program numerito
	implicit none
	
	integer :: a

	write (*,*) "dame un numero:"
	read (*,*) a
	
	if (a == 0)	then
		write (*,*) "cero"
	end if
	
	if (a == 1)	then
		write (*,*) "uno"
	end if

	if (a == 3) then
		write (*,*) "tres"
	else
		if (a == 4) then
			write (*,*) "cuatro"
		else
			if (a == 5) then
				write (*,*) "cinco"
			end if
		end if
	end if
	
	if (a == 6) write (*,*) "seis"
	if (a == 7) write (*,*) "siete"
	
	select case (a)
		case (2)
			write(*,*) "dos"
		case (8)
			write(*,*) "ocho"
		case (9)
			write(*,*) "nueve"
		case (10:19)
			write (*,*) "diez y algo"
		case (20:)
			write (*,*) "20 y mas"
		case (:1)
			write (*,*) "jaja no puedes copmprar pisto"
		case default
			write (*,*) "por defecto"
	end select
	
	
end program














