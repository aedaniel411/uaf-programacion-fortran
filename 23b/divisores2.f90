program divisores
    implicit none
    integer :: n, x, s

    write (*,*) "Un numero?"
    read (*,*) n

    s = 0
    do x = 1, n
        if (mod(n, x) == 0) s = s + 1
    end do 

    write (*,*) "tiene ", s, " divisores"

end program