program amigos
    implicit none
    integer :: x, n,y 
    
    write (*,*) "Un numero?"
    read (*,*) n

    x = sumdiv(n)
    write (*,*) x

    y = sumdiv(x)
    write (*,*) y

    if (y == n) then
        write (*,*) "son amigos"
    else 
        write (*,*) " no son amigos"
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