program archivos01
    implicit none

    real :: x 
    integer :: n, i 

    open (unit=39, file="datos.txt")

    write (*,*) "¿cuantos numeros aleatorios?"
    read (*,*) n
    write (39,*) n 

    do i = 1, n 
        call random_number(x)
        write (*,*) x 
        write (39,*) x
    end do 

    close (39)

end program