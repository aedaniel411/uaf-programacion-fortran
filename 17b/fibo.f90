program fibonacci
    implicit none
    integer :: x, i 

    write (*,*) "cuantos numeros?"
    read (*,*) x

    do i = x, 1, -1
        write (*,*) nfibo(i)
    end do

stop
contains
    integer function nfibo(n)
        integer :: n, a, b, c, i, r
        a = 0
        b = 1
        c = 1
        do i = 1, n
            !write (*,*) c
            r = c
            c = a + b
            a = b
            b = c
        end do
        nfibo = r
    end function
end program
