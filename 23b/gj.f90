program gj
    implicit none
    integer, parameter :: N = 3

    real :: a (N, N + 1), piv, x
    integer :: p, c, r

    ! entrada de datos
    call leermat(a,N)

    !proceso de datos
    !repe3tir por contador
    do p = 1, N 
        ! hacer unos
        piv = a (p,p)
        do c = 1, N + 1
            a (p,c) = a (p,c) / piv 
        end do 
        ! hacer ceros
        do r = 1, N
            if (p /= r ) then 
                x = a(r,p)
                do c = 1, N + 1
                    a(r,c) = a(r,c) - (x * a(p,c))
                end do 
            end if 
        end do 
    end do 
    !salida
    call escribirmat(a,N)
    stop
    contains
    subroutine leermat(a, N)
        integer, intent(in) :: N
        real :: a(N,N + 1)
        integer :: r, c 

        do r = 1, N 
            do c = 1, N + 1
                write(*,'(a,i2,a,i2,$)') "[",r,",",c,"]"
                read(*,*) a(r,c)
            end do 
        end do 
    end subroutine
    subroutine escribirmat(a, N)
        integer, intent(in) :: N
        real :: a(N,N + 1)
        integer :: r, c 

        do r = 1, N 
            do c = 1, N + 1
                write(*,'(f7.2,$)') a(r,c)
            end do 
            write (*,*)
        end do 
    end subroutine
end program