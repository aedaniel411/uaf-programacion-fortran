program pares
    implicit none
    
    integer :: x
    logical  :: r
    
    write (*,*) "Dame un numero:"
    read(*,*) x

    if (x <= 0) then
        write (*,*) "debe ser mayor a 0"
    else 

    !--- es para identificar par
        if ( espar(x) ) then
            write (*,*) x, " es par"
        else
            write (*,*) x, " no es par"
        end if 
        
    end if
    
    stop
    contains
    
    logical function espar(n)
        integer :: n
        espar = mod(n,2) == 0
    end function
    
end program
