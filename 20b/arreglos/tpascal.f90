program tpascal
    implicit none
    integer :: a(20,0:40), n, r, c 

    !- asigna ceros al arreglo
    a = 0 

    write (*,'(a,$)') "¿cuántos niveles? "
    read (*,*) n 

    !- Asignar 1 a la columna central del 1er renglon
    a(1,n) = 1

    do r = 2 , n 
        do c = 1, (n*2) - 1
            a(r,c) = a(r-1,c-1) + a(r-1,c+1)
        end do
    end do 

    !- Mostrar en pantalla
    do r = 1, n
        do c = 1, (n*2) -1
            if (a(r,c) == 0) then
                write (*,'(a2,$)') " "
            else
                write (*,'(i2,$)') a(r,c)
            end if
        end do
        write(*,*)
    end do 


end program