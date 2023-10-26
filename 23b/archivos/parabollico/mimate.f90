module mimate
    implicit none
    real, parameter :: pi = 4.0 * atan(1.0)
    real, parameter :: g = 9.8

    contains

    real function g2r (grados)
        real, intent(in) :: grados
        g2r = grados * pi / 180.0
    end function
    
    real function r2g (radianes)
        real, intent(in) :: radianes 
        r2g = 180.0 * radianes / pi 
    end function 
end module 