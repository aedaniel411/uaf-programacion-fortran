program multiplica
	!- Programa para multiplicar matrices
	!- Daniel Acosta
	implicit none
	integer :: a(100,100), b(100,100), c(100,100)
	integer :: suma, i, j, r, n, renA, colB
	
	write (*,*) "Matriz A"
	call leermatriz(a, renA, n)
	
	write (*,*) "Matriz B"
	call leermatriz(b, n, colB)
	
	!-multiplicacion de matrices
	do i = 1, renA
		do j = 1, colB
			suma = 0
			do r = 1, n
				suma = suma + ( a(i,r) * b(r,j) )
			end do
			c(i,j) = suma
		end do
	end do

	call escribemat(c, renA, colB)

stop
contains

subroutine leermatriz(m,nr,nc)
	integer, intent(inout) :: m(100,100), nr, nc
	integer :: i, j
	
	write (*,*) "cuantos ren de la matriz:"
	read (*,*) nr
	write (*,*) "cuantos col de la matriz:"
	read (*,*) nc
	
	do i = 1, nr
		do j= 1, nc
			write (*,'(a,i2,a,i2,a,$)') "(",i,",",j,")="
			read(*,*) m(i,j)
		end do
	end do
	
end subroutine

subroutine escribemat(cri, nr, nc)
		integer, intent(in) :: cri(100,100), nr, nc
		integer :: ren, col
		
		call system("clear") !- para linux
		!call system("cls") !- para windows
		write (*,*)
		do ren = 1, nr
			do col = 1, nc
				if (cri(ren,col)  /= 0) then
					write (*,'(i4,$)') cri(ren,col)
				else
					write (*,'(a4,$)') " "
				end if
			end do
			write (*,*)
		end do
		write (*,*)
		write (*,*)
		write (*,*) "Presiona -Enter- para continuar"
		read (*,*)
	end subroutine
	

end program
