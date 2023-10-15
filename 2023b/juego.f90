program juego
    implicit none
    integer :: a(10,10), b(10,10)
    integer :: i, j 

    call iniciar (a)
    call escribe (a)
    
    b = 0
    do i = 1, 10
        do j = 1, 10
            if (a(i,j)== 0) then 
                if (suma(a,i,j) == 3) b(i,j) = 1
            else 
                if (suma(a,i,j) > 3) b(i,j) = 0
                if (suma(a,i,j) < 2) b(i,j) = 0
            end if 
        end do 
    end do 

    a = b
    call escribe(a)

    stop 
    contains
    integer function suma(a,r,c)
        integer :: a(10,10)
        integer, intent(in) :: r, c
        integer :: ri, rf, ci, cf, s, i, j
        ri = r - 1
        rf = r + 1
        ci = c - 1
        cf = c + 1
        if (ri == 0) ri = 1
        if (rf == 11) rf = 10
        if (ci == 0) ci = 1
        if (cf == 11) cf = 10
        s = 0
        do i = ri, rf 
            do j = ci, cf 
                s = s + a(i,j)
            end do
        end do 
        suma = s - a(r,c)      
    end function 

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