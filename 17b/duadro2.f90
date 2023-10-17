program cuadro
    implicit none
    integer :: c(200,200), v(200), col, ren, n

    c = 0
    v = 0
    n = 0
    do ren = 1, 4
        do col = 1, 4
            if ((col == ren) .or.(col == (5 - ren)))then
                c(ren,col) = ((ren - 1) * 4) + col
            else
                n = n + 1
                v(n) = ((ren - 1) * 4) + col
            end if
        end do
    end do

    do ren = 1, 4
        do col = 1, 4
            print '(i3,$)', c(ren, col)
        end do
        print *
    end do

    print *, v(1:n)
    n = 1
    do ren = 4, 1, -1
        do col = 4, 1, -1
            if (c(ren,col)== 0) then
                c(ren, col) = v(n)
                n = n + 1
            end if
        end do
    end do
    do ren = 1, 4
        do col = 1, 4
            print '(i3,$)', c(ren, col)
        end do
        print *
    end do

end program
