program cuadro
    implicit none
    integer, parameter :: N = 3
    integer :: a(N,N) = 0
    integer :: x, ren, col

    col = 1
    ren = (N + 1) / 2

    do x = 1, N*N 
        a(ren,col) = x

        if (mod(x, N) == 0) then
            col = col - 1
            if (col == 0) col = N
        else 
            col = col + 1
            ren = ren + 1
            if (ren > N) ren = 1
            if (col > N) col = 1
        end if            
    end do 

    call escribe (a)

    stop
    contains

    subroutine escribe(a)
        integer :: a(N,N)
        integer :: i, j
        do i = 1, N 
            do j = 1, N 
                write(*,'(i4,$)') a(i,j)
            end do 
            write (*,*)
        end do 
    end subroutine 

end program