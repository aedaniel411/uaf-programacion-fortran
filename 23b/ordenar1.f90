! Progama que muestre 10 numeros aleatorios, los 
! muestre en pantalla, los ordene de menor a mayor y 
! muestre los numeros ordenados en pantalla

program ordenar1
    implicit none

    integer :: i, j, n
    real :: x
    integer :: a(10), temp 

    do i = 1, 10
        call random_number(x)
        n = nint (x * 100)
        write (*,*) n
        a (i) = n
    end do

    write (*,*) "----------"

    do i = 1, 10
        do j = 1, 10 - i
            if (a(j) > a(j + 1)) then 
                temp = a(j)
                a(j) = a (j+1)
                a(j+1) = temp
            end if
        end do 
    end do

    do i = 1, 10
        write (*,*) a(i)
    end do

end program 