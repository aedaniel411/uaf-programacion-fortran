program fibonacci
    implicit none
    integer :: n 

    write (*,*) "numerito de fibonacci?"
    read (*,*) n 
    write (*,*) nfibo(n)

    stop
    contains

    integer*16 function nfibo(n)
        integer, intent(in) :: n
        integer*16 :: i, a, b, c

        a = 0
        b = 1
        do i = 1, n
            c = a + b
            a = b
            b = c
        end do 

        nfibo = a
    end function
end program 