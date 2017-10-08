program divisores
    implicit none
    integer :: x

    write (*,*) "numero?"
    read (*,*) x

    if (esprimo(x)) then
        write (*,*) x, " SI es primo"
    else
        write (*,*) x, " NO es primo"
    end if

stop
contains
    integer function ndivi(n)
        integer :: n, d, c
        c = 0
        do d = 1, n
            if (mod (n, d) == 0) then
                !--es divisor
                c = c + 1
            end if
        end do
        ndivi = c
    end function

    logical function esprimo(n)
        integer :: n
        esprimo = (ndivi(n) == 2)
    end function
end program
