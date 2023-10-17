program vector4
    implicit none

    type vector
        real :: mag = 0, dirg = 0
        real :: dirr = 0, cx = 0, cy =0  
    end type vector 
    
    integer :: n 
    type(vector) :: v(10)
    

    n = 0
    do 
        n = n+1
        call leervec(v(n))

        if (v(n)%mag == 0) exit 
    end do 

    call escribirvec(v,n)

    stop
    contains
    subroutine escribirvec(v,n)
        type (vector) :: v(10)
        integer :: n 
        integer :: i 
        do i = 1, n - 1
            write (*,'(i3,f10.3,f10.3,f10.3,f10.3)') i,v(i)%mag,v(i)%dirg,v(i)%cx,v(i)%cy
        end do 
    end subroutine 

    subroutine leervec(v)
        type(vector) :: v    
        write (*,'(a,$)') "magnitud del v"
        read (*,*) v%mag 
        write (*,'(a,$)') "direccion del v"
        read (*,*) v%dirg
        call carvector(v)
    end subroutine

    subroutine carvector(v)
        type (vector) :: v
        v%dirr = gradosRadianes(v%dirg)
        v%cx = v%mag * cos(v%dirr)
        v%cy = v%mag * sin(v%dirr)
    end subroutine

    function sumav (v1, v2)
        type(vector) :: sumav
        type (vector) :: v1,v2 
        sumav%mag = v1%mag + v2%mag 
    end function

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