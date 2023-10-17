program perfecto
    implicit none
    integer :: n

    write (*,*) "Un numero?"
    read (*,*) n

    write (*,*) "Suma = ", sumdiv(n)

    if (n == sumdiv(n)) then
        write (*,*) n, "es perfecto"
    else 
        write (*,*) n, "no es perfecto"
    end if

    stop
    contains

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