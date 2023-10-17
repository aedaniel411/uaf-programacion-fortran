program psumavec
    use mvectores
    implicit none
    
    type (vector) :: x, y, z

    write (*,*) "Primer vector"
    call leervector (x)

    write (*,*) "Segundo vector"
    call leervector(y)

    call sumavec(x,y,z)

    write (*,*) "Suma de vector:"
    call escribirvector(z)
end program psumavec
