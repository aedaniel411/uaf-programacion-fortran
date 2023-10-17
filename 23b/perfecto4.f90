program perfecto
    implicit none
    integer :: x, n

    n = 0
    x = 0
    do while (n < 5)
        x = x + 1
        if (esperfect(x)) then
            n = n + 1
            write (*,*) x, n
        end if
    end do

    stop
    contains
    
    logical function esperfect(n)
        integer, intent(in) :: n
        esperfect = n == sumdiv(n)
    end function
    
    integer function sumdiv(n)
        integer, intent(in) :: n
        integer :: suma, x 

        suma = 0
        do x = 1, n - 1
            if (mod(n, x) == 0) then 
                suma = suma + x
            end if
        end do
        
        sumdiv = suma
    end function

end program