program divisores
    implicit none
    integer :: n, x

    write (*,*) "Un numero?"
    read (*,*) n

    do x = 1, n
        if (mod(n, x) == 0) write (*,*) x
    end do 

end program