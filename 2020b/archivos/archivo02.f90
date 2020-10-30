program archivo02
    implicit none
    real :: y
    integer :: m, j

    open (unit=67, file="datos.txt")
    
    read (67,*) m 
    write (*,*) "leyendo ", m, " numeros aleatorios"

    do j = 1, m 
        read (67,*) y
        write (*,*) y
    end do 

    close (67)
end program archivo02