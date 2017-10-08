program numeritos
    implicit none
    integer :: panchito (10), i, j, temp

    do i = 1, 10
        print *, "Dame el elemento(",i,"):"
        read (*,*) panchito(i)
    end do

    do i = 1, 10
        print *, panchito(i)
    end do

    do i = 1, 9
        do j = 2, 10
            if (panchito(j) < panchito(j - 1)) then
                !intercambio
                temp = panchito(j)
                panchito(j) = panchito(j - 1)
                panchito(j - 1) = temp
            end if
        end do
    end do

    print *,
    do i = 1, 10
        print *, panchito(i)
    end do
end program
