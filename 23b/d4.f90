program d4
    implicit none
    integer, parameter :: N = 4

    real :: a (N,N), w, x, multi
    integer :: c , r, p

!entrada de datos
    call leermat(a,N)

!proceso de datos
    do p = 1, N 
        w = a(p,p)
        do r = p+1, N
            x = a(r,p)
            do c = 1, n 
                a(r,c) = a(r,c) - (x / w * a(p,c))
            end do 
        end do 
    end do 

    multi = 1
    do p = 1, N
        multi = multi * a(p,p)
    end do 
!mostrar datos
    !call escribir(a,N)

    write (*,*) multi 

    stop
    contains
    subroutine leermat(a, N)
        integer, intent(in) :: N
        real :: a(N,N)
        integer :: r, c 

        do r = 1, N 
            do c = 1, N 
                write(*,'(a,i2,a,i2,$)') "[",r,",",c,"]"
                read(*,*) a(r,c)
            end do 
        end do 
    end subroutine
    subroutine escribirmat(a, N)
        integer, intent(in) :: N
        real :: a(N,N)
        integer :: r, c 

        do r = 1, N 
            do c = 1, N 
                write(*,'(f7.2,$)') a(r,c)
            end do 
            write (*,*)
        end do 
    end subroutine
end program