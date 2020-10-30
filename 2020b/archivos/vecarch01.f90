program vecarch
    use mvectores
    implicit none
    
    type (vector) :: v
    character*16 :: archivo

    write (*,*) 'Datos del vector'
    call leervector (v)

    write (*,*) "Nombre del archivo"
    read (*,*) archivo 

    open(unit=13, file=archivo, status='old')
        write (13,*) v 
    close(13)
    
end program vecarch