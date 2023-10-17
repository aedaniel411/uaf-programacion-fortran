program INVERSAgaussjordan
    implicit none

	integer :: m, n, i, j, p
	real:: a(100,101), piv, x

write(*,*) "Ingrese los datos de la matriz"
write(*,*)

    write (*,*) "Numero de renglones"
    read (*,*) m

    write (*,*) "Numero de columnas"
	read(*,*) n
	
	write(*,*)

	write(*,*) "Ingrese los elementos de la matriz e iguale a la matriz identidad"

	do i = 1, m
		do j= 1, m+m
			write (*,'(a, i3, a, i3, a, $)') "A(",i,",",j,")="
			read (*,*) a(i,j)
		end do
	end do

call mostramat(a, m)


do p = 1, m
	piv = a(p, p)
	do j = 1, m+m
		a(p,j) = a(p,j) / piv
	end do
			do i = 1, m
			if (i /= p) then 
				x = a(i, p)
				do j = 1, m+m
					a(i,j) = a(i, j) - x*a(p, j)
				end do
			end if
			end do
		call mostramat (a, m)
end do

stop 
contains
	
	subroutine mostramat (a, m)
	real, intent (in) :: a( 100, 101)
	integer :: i, j, m
	
	write (*,*)
	write (*,*)
	
	do i = 1, m
		do j = 1, m+m
			write (*, '(f7.3,$)') a(i, j)
		end do
		write (*,*)
	end do
	read(*,*)
	end subroutine 

end program