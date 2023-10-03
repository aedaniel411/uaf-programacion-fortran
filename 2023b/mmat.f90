program mmat
    implicit none
    real :: a(2,2), b(2,2), c(2,2), suma
    integer :: i, j, r

    call random_seed()

    !call random_number(a)
    !call random_number(b)

    do i = 1, 2
        do j = 1, 2
            print *, "a(",i,",",j,"):"
            read (*,*) a(i,j)
        end do
    end do
    do i = 1, 2
        do j = 1, 2
            print *, "b(",i,",",j,"):"
            read (*,*) b(i,j) 
        end do
    end do 
    
    call mostrarm(a)
    call mostrarm(b)

    do i = 1, 2
        do j = 1, 2
            suma = 0
            do r = 1, 2
                suma = suma + a(i,r) * b (r,j)
            end do 
            c(i,j) = suma 
        end do
    end do 

    print *,'---------'
    call mostrarm (c)
    print *,'---------'
    print *, matmul(a,b)

    stop
    contains

    subroutine mostrarm(x)
        real :: x(2,2)
        integer :: r, c 
        write (*,*)
        do  r = 1, 2
            do c = 1, 2
                write (*,'(f7.2, $)') x(r,c)
            end do 
            write (*,*)
        end do 
        write (*,*)
    end subroutine

end program