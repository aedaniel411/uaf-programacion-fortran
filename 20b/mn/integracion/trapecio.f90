program trapecio
    implicit none

    real :: a, b, h, x1, x2
    real :: suma
    integer :: i, n 

    n = 200

    a = 0.0
    b = 0.8
    h = (b - a) / n  
    suma = 0.0 

    do i = 0, n-1
        x1 = a + (h * i)
        x2 = a + (h * (i + 1))
        suma = suma + ((f(x1) + f(x2)) / 2.0 * h)
    end do

    write (*,*) suma
stop
contains
    real function f(x)
        real :: x
        f = 0.2 + 25*x -200*x**2 + 675*x**3 - 900*x**4 + 400*x**5
    end function
end program