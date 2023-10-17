program lagrange
    implicit none

    real :: x(0:100), y(0:100), suma, multi, xx
    integer :: i,j,n
    
    write (*,*) "cuántos valores?"
    read (*,*) n 

    do i = 0, n-1
        write (*,*) "valor de x[",i,"]"
        read (*,*) x(i)

        write (*,*) "valor de y[",i,"]"
        read (*,*) y(i)
    end do 
    write (*,*) "dato a buscar?"
    read (*,*) xx

    suma = 0.0
    do i = 0, n-1
        
        multi = 1
        do j = 0, n-1
            if (i /= j) then
                multi = multi * ((xx-x(j))/(x(i)-x(j)))
            end if 
        end do

        suma = suma + (multi * y(i))
    end do 

    write (*,*) "Resultado para x= ",xx
    write (*,*) "Es ", suma 

end program