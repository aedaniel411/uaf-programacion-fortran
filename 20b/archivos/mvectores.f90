module mvectores
    implicit none
    
    type vector
        real :: m, a, cx,cy, ar
    end type

contains
    real function gar(x)
        real :: x
        real :: pi = 4.0 * atan(1.0) 
        gar = (x * pi) / 180
    end function

    real function rag(x)
        real :: x
        real :: pi = 4.0 * atan(1.0) 
        rag = (x * 180) / pi
    end function

    real function compox(m,ar)
        real :: m, ar 
        compox = m * cos(ar)
    end function

    real function compoy(m,ar)
        real :: m, ar 
        compoy = m * sin(ar)
    end function

    subroutine obtenercompo (x)
        type(vector) :: x

        x%ar = gar(x%a)
        x%cx = compox(x%m, x%ar)
        x%cy = compoy(x%m, x%ar)
    end subroutine

    subroutine obtenerma(x)
        type(vector) :: x
        
        x%m = sqrt(x%cx**2 + x%cy**2)

        x%ar = atan(x%cy / x%cx)

        x%a = rag(x%ar)

    end subroutine

    subroutine sumavec(a,b,c)
        type(vector) :: a,b,c

        call obtenercompo(a)
        call obtenercompo(b)

        c%cx = a%cx + b%cx
        c%cy = a%cy + b%cy 

        call obtenerma(c)
    end subroutine

    subroutine leervector(x)
        type(vector) :: x 

        write (*,'(a,$)') "Dame la magnitud del vector: "
        read (*,*) x%m 

        write (*,'(a,$)') "Dame la angulo del vector: "
        read (*,*) x%a 
        
    end subroutine

    subroutine escribirvector(x)
        type(vector) :: x 

        write (*,'(a,f7.2)') "Magnitud: ",x%m 
        write (*,'(a,f7.2)') "Angulo: " , x%a 
        
    end subroutine
end module mvectores