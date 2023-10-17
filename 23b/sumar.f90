program sumar
    implicit none

    write (*,*) sumatoria(100)
    stop
    contains 

    recursive function sumatoria (n) result(s)
        integer, intent(in) :: n
        integer :: s  

        if (n == 1) then 
            s = 1
        else 
            s = n + sumatoria(n - 1)
        end if 

    end function


end program 