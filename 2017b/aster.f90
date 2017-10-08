program aster
    implicit none
    integer :: x

    write (*,*) "cuantos renglones?"
    read (*,*) x

    call cuadrado (x)

stop
contains
    subroutine cuadrado(ren)
        integer :: ren
        integer :: r, c
        do r = ren, 1, -1
            do c = 1, r
                write (*,'(a,$)') "*"
            end do
            write (*,*)
        end do
    end subroutine
end program
