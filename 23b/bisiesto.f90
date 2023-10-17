program  bisiestos
    implicit none
    
    integer :: a
    
    write (*,*) "Año:"
    read (*,*) a
    
    if ( .not.(esbis(a)) ) then
        write (*,*) "no es bis"
    else
        write (*,*) "si lo es"
    end if
        
    stop
    contains
     
     logical function esbis(x)
        integer :: x
        logical :: bis
        
        if (mod (x, 4) == 0) then
        !- posiblemente es
            if (mod(x,100) == 0) then
                if (mod(x,400) == 0) then
                    bis = .True.
                else
                    bis = .False.    
                end if
            else 
                bis = .True. 
            end if
        else
            bis = .False.
        end if 
        
        esbis = bis
     end function
end program


















