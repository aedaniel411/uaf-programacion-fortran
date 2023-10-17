program vector
    implicit none

    real :: m1, d1, m2, d2, mt, dt
    real :: cx1, cy1, cx2, cy2, cxt, cyt

    write (*,*) " magnitud v1:"
    read (*,*) m1
    write (*,*) " direccion v1:"
    read (*,*) d1
    write (*,*) " magnitud v2:"
    read (*,*) m2
    write (*,*) " direccion v1:"
    read (*,*) d2

    d1 = gradosRadianes(d1)
    d2 = gradosRadianes(d2)

    cx1 = cos(d1) * m1 
    cx2 = cos(d2) * m2 

    cy1 = sin(d1) * m1
    cy2 = sin(d2) * m2

    cxt = cx1 + cx2 
    cyt = cy1 + cy2 

    mt = (cxt**2 + cyt**2)**(1.0/2.0)
    dt = atan2(cyt , cxt)

    dt = radianesGrados(dt)

    write (*,*) "total:"
    write (*,*) "magnitud:", mt
    write (*,*) "direcc:", dt
    
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