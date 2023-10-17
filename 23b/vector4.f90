program vector4
    implicit none

    type vector
        real :: mag, dir 
    end type vector 
    
    type(vector) :: v1, v2

    write (*,*) "magnitud del primer vector"
    read (*,*) v1%mag 
    write (*,*) "direccion del primer vector"
    read (*,*) v1%dir
    write (*,*) "magnitud del segunfo vector"
    read (*,*) v2%mag
    write (*,*) "direccion del segundo vector"
    read (*,*) v2%dir 

    write (*,*) "vector 1", v1 
    write (*,*) "M2", v2%mag, "D2", v2%dir 
    stop
    contains

    real function gradosRadianes(x)
        real, intent(in) :: x
        real :: pi = atan(1.0) * 4.0 
        gradosRadianes = x * pi / 180.0
    end function

    real function radianesGrados(x)
        real, intent(in) :: x
        real :: pi = atan(1.0) * 4.0
        radianesGrados = 180.0 * x / pi 
    end function

    
end program