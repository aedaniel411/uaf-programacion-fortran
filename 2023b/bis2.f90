program bisiesto
    implicit none
    
    logical :: p, q, r, esbis
    
    integer :: a
    
    write (*,*) "Año:"
    read (*,*) a

    p = mod(a, 4) == 0
    
    !q = mod(a, 100) /= 0
    q = .not. (mod(a, 100) == 0)
    
    r = mod(a, 400) == 0
    
    esbis = p .and. (q .or. r)
    
    write (*,*) a, esbis
    
end program

