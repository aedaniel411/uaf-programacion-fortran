program divisores
    implicit none
    integer :: n, i

    write (*,*) "Un numero?"
    read (*,*) n

    do i = 1, n
        if (esprimo(i)) write(*,*) i
    end do 
    
    stop
    contains
    logical function esprimo(n)
        integer, intent(in) :: n
        
        esprimo = ndivi(n) == 2
        
    end function
    
    integer function ndivi(x)
        integer, intent(in) :: x
        integer :: s, i
        s = 0
        do i = 1, x
            if (mod(x, i) == 0) s = s + 1
        end do
        ndivi = s
    end function
end program