program perfecto
    implicit none
    integer :: x

    do x = 1, 100
        if (esperfect(x)) then
            write (*,*) x
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