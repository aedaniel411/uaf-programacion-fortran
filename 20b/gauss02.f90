program gauss02
    implicit none 

    type sisec
        integer :: n !- numero de ecuaciones
        real :: a(20,20)=0, b(20)=0
    end type

    type(sisec) :: se
    character*32 :: archivo
    !- para la libreria
    real :: piv(20)
    integer :: info

    write (*,*) "nombre de archivo a abrir"
    read (*,*) archivo

    open(unit=21, file=archivo, status="unknown")
    read (21,*) se 
    close(21)

    !- trabajar con la libreria
    !call sgesv(n, nrhs, a, lda, ipiv, b, ldb, info)
    call sgesv(se%n, 1, se%a(:se%n,:se%n), se%n, piv, se%b(:se%n), se%n, info)

    write (*,*) se%b(:se%n) 
    
end program