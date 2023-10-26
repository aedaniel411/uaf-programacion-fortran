program guardarsudoku
    implicit none
    integer :: i, j
    integer :: a(9,9)
    character*12 :: archivo 

    do i = 1, 9
        do j = 1, 9
            write (*,'(a,i1,a,i1,a,$)') "[",i,",",j,"]:"
            read (*,*) a(i,j)
        end do
    end do 

    write(*,*)
    write(*,*) "__________________________"
    write(*,*)

    do i = 1, 9
        do j = 1, 9
            if (a(i,j) /= 0) then  
                write (*,'(i3,$)') a(i,j)
            else
                write (*,'(a3,$)') " "
            end if 
        end do
        write (*,*)
    end do 

    write (*,*) "nombre de archivo?"
    read (*,*) archivo

    open(unit=17, file=trim(archivo), status='unknown')
    write (17,*) a 
    close (17)
end program 