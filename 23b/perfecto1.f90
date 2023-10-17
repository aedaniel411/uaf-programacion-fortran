program perfecto
    implicit none
    integer :: n, x, suma

    write (*,*) "Un numero?"
    read (*,*) n

    suma = 0
    do x = 1, n - 1
        if (mod(n, x) == 0) then 
            write (*,*) x
            suma = suma + x
        end if
    end do
    write (*,*) "Suma = ", suma 
end program