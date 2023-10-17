module mmate 
    real, parameter :: pi = 4.0 * atan(1.0)
contains 
    real function gradosRadianes(x)
        real, intent(in) :: x 
        gradosRadianes = x * pi / 180.0
    end function

    real function radianesGrados(x)
        real, intent(in) :: x
        radianesGrados = 180.0 * x / pi 
    end function
end module 