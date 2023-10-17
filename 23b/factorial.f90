program factorial
implicit none
    integer :: n 

    write (*,*) "factorial?"
    read (*,*) n 
    write (*,*) nfactorial(n)

    stop
    contains

    integer function nfactorial (n)
        integer, intent(in) :: n 
        integer :: m, i 
        m = 1

        do i = 1, n 
            m = m * (i)
        end do 
        nfactorial = m 
    end function
end program