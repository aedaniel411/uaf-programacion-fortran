program cuenta
    implicit none
    integer :: n, i,j
    integer :: a(5) 

    a = 0

    do i = 1, 5
        write(*,*) a(i) 
    end do

    do 
        write(*,*) "dame un numero"
        read (*,*) n 

        if ((n > 0) .and. (n <= 5)) a(n) = a(n) + 1

        if (n == 0) exit
    end do

    do i = 1, 5
        write (*,'(I2,A,I2,$)') i,".-",a(i)
        do j = 1, a(i)
            write (*,'(A,$)') '#' 
        end do 
        write (*,*)
    end do

stop
contains

end program
