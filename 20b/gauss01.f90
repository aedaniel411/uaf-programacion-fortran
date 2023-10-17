program gauss
    implicit none

    type sisec
        integer :: n !- numero de ecuaciones
        real :: a(20,20)=0, b(20)=0
    end type

    type(sisec) :: se
    integer :: ren, col
    character*32 :: archivo  

    write (*,*) "cuantas ecuaciones?"
    read (*,*) se%n 

    write (*,*) "Elementos de A"
    do ren = 1, se%n
        do col = 1, se%n 
            write(*,*) "elemto de A"
            read (*,*) se%a(ren,col)
        end do
    end do 

    write (*,*)
    write (*,*) "Elementos de b"
    do ren = 1, se%n 
        write(*,*) "elemto de b"
        read (*,*) se%b(ren)
    end do 
    
    write (*,*) "nombre de archivo a guardar"
    read (*,*) archivo

    open(unit=21, file=archivo, status="unknown")
    write (21,*) se 
    close(21)

end program