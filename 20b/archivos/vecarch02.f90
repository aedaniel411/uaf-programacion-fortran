program vecarch02
    use mvectores
    implicit none

    type(vector) :: w
    character*16 :: archivo

    write (*,*) "Nombre del archivo"
    read (*,*) archivo 

    open(unit=20, file=archivo, status='old')
        read (20,*) w 
    close(20)

    call escribirvector(w)
    
end program vecarch02