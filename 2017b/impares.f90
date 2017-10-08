program impares
    implicit none
    integer :: i, n

    read (*,*) n

    do i = 1, n
        if (mod (i,2) == 1) then
            write (*,*) i
        end if 
    end do
end program
