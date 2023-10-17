program cuadro
    implicit none
    integer :: d, c(200,200), i, col, ren

    print *, "Dim del cuadro?"
    read (*,*) d

    col = d / 2 + 1
    ren = 1
    do i = 1, d**2
        c(ren, col) = i
        if (mod(i,d) == 0) then
            ren = ren + 1
        else
            ren = ren - 1
            if (ren == 0) then
                ren = d
            end if
            col = col + 1
            if (col > d) then
                col = 1
            end if
        end if
    end do

    !-------------------
    do ren = 1, d
        do col = 1, d
            print '(i3,$)', c(ren, col)
        end do
        print *
    end do
end program
