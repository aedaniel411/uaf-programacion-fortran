program vector
    implicit none

    real :: m1, d1, m2, d2
    
    write (*,*) " magnitud v1:"
    read (*,*) m1
    write (*,*) " direccion v1:"
    read (*,*) d1
    write (*,*) " magnitud v2:"
    read (*,*) m2
    write (*,*) " direccion v1:"
    read (*,*) d2

    write (*,*) "total:"
    write (*,*) "magnitud:", sumavecM(m1,d1,m2,d2)
    write (*,*) "direcc:", sumavecD(m1,d1,m2,d2)
    
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

    real function sumavecM(m1,d1,m2,d2)
    real, intent(in) :: m1, d1, m2, d2
    real :: cx1, cy1, cx2, cy2, cxt, cyt, td1, td2
        td1 = gradosRadianes(d1)
        td2 = gradosRadianes(d2)

        cx1 = cos(td1) * m1 
        cx2 = cos(td2) * m2 

        cy1 = sin(td1) * m1
        cy2 = sin(td2) * m2

        cxt = cx1 + cx2 
        cyt = cy1 + cy2 

        sumavecM = (cxt**2 + cyt**2)**(1.0/2.0)
    end function

    real function sumavecD(m1,d1,m2,d2)
    real, intent(in) :: m1, d1, m2, d2
    real :: cx1, cy1, cx2, cy2, cxt, cyt, td1, td2
        td1 = gradosRadianes(d1)
        td2 = gradosRadianes(d2)

        cx1 = cos(td1) * m1 
        cx2 = cos(td2) * m2 

        cy1 = sin(td1) * m1
        cy2 = sin(td2) * m2

        cxt = cx1 + cx2 
        cyt = cy1 + cy2 

        sumavecD = radianesGrados(atan2(cyt , cxt))
    end function 

end program