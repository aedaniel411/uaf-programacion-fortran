program criba
    implicit none
    integer :: a(120)
    integer :: i 

    call iniciar(a)
    call escribe(a)

    do i = 2, 10
        call elimina(a, i)
        call escribe(a)
    end do 

    stop
    contains

    subroutine iniciar(a)
        integer :: a(120)
        integer :: x

        do x = 1, 120
            a(x) = x
        end do 
    end subroutine

    subroutine escribe(a)
        integer :: a(120)
        integer :: ren, col, x
        x = 1
        call system('clear')
        do ren = 1, 12
            do col = 1, 10
                if (a(x) == 0) then
                    write (*,'(a4,$)') " "
                else
                    write (*,'(i4,$)') a(x)
                end if
                x = x + 1
            end do
            write (*,*)
        end do
        write (*,*) "Presiona ENTER para continuar"
        read (*,*)
    end subroutine

    subroutine elimina(a,n)
        integer :: a(120), n 
        integer :: x 
        do x = n + 1, 120
            if (mod(a(x), n) == 0) then
                a(x) = 0
            end if
        end do 
    end subroutine
end program
