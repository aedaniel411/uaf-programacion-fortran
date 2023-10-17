program mmat
    use mescritura
	implicit none
	integer :: i, j, r, n, renA, colB
	real :: a(10,10), b(10,10), c(10,10), suma 
	
        type (matriz_real) :: ct        

	a = 0
	b = 0
	c = 0
	
	write (*,*) "cuantos renglones para A:"
	read (*,*) renA
	write (*,*) "cuantas columas para A y renglones B"
	read (*,*) n
	write (*,*) "cuantas columnas de B"
	read (*,*) colB
	!- lectura de la matriz A
	do i = 1, renA
		do j = 1, n
			write (*,*) "elemento a[",i,",",j,"]:"
			read (*,*) a(i,j)
		end do
	end do
	
	!- lectura de la matriz B
	do i = 1, n
		do j = 1, colB
			write (*,*) "elemento b[",i,",",j,"]:"
			read (*,*) b(i,j)
		end do
	end do
	
	!-Se realiza la multiplicacion
	!do i = 1, renA
	!	do j = 1, colB
	!		suma = 0
	!		do r = 1, n
	!			suma = suma + (a(i,r) * b(r, j))
	!		end do

	!		c(i,j) = suma
	!	end do
	!end do
	
	!- c = matmul(a, b)
	!- Escribir en pantalla matriz C
        !-- call escribe_mat(c, renA, ColB)

        ct%m = matmul(a, b)
        ct%nren = renA
        ct%ncol = colB

        call escribe_mat(ct) 
end program
