program prueba
    implicit none
    integer :: i

    do i = 1, 9
        write(*,*) i, limi(i), lims(i)
    end do

    stop 
    contains

    integer function limi(i)
        integer, intent(in) :: i
        select case (i)
            case (1:3)
                limi = 1
            case (4:6)
                limi = 4
            case (7:9)
                limi = 7
        end select 
    end function
    integer function lims(i)
        integer, intent(in) :: i
        select case (i)
            case (1:3)
                lims = 3
            case (4:6)
                lims = 6
            case (7:9)
                lims = 9
        end select 
    end function
end program 