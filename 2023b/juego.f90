program juego
    implicit none
    integer :: a(10,10)

    call iniciar (a)
    call escribe (a)


    stop 
    contains

    subroutine iniciar(a)
        integer :: a(10,10)
        integer :: ren, col
        real :: x

        do ren = 1, 10
            do col = 1, 10
                x = rand()
                a(ren, col) = nint(x)
            end do 
        end do 
    end subroutine

    subroutine escribe(a)
        integer :: a(10,10)
        integer :: ren, col
        call system('clear')
        do ren = 1, 10
            do col = 1, 10
                if (a(ren,col) == 0) then
                    write (*,'(a1,$)') " "
                else
                    write (*,'(a1,$)') "*"
                end if
            end do
            write (*,*)
        end do
        call enter("Presiona ENTER para continuar   ")
    end subroutine

    subroutine enter(a)
        character*32 :: a
        write (*,*) a
        read (*,*)
    end subroutine
end program 