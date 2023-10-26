module modsdk
    implicit none 

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
    integer function sumacuad(s,p,r,c)
	integer, intent(in) :: p, r, c
	integer, intent(inout) :: s(9,9,9)

	integer :: suma, i, j

	suma = 0
	do i = limi(r), lims(r)
	    do j = limi(c), lims(c)
	       suma = suma + s(p,i,j)
            end do
        end do
        sumacuad = suma
    end function
    integer function sumafila(s,p,r,c)
       integer, intent(in) :: p,r,c
       integer, intent(inout) :: s(9,9,9)

       integer :: suma, i

       suma = 0
       do i = 1, 9
          suma = suma + s(p,r,i)
       end do
       sumafila = suma
    end function
    integer function sumacol(s,p,r,c)
       integer, intent(in) :: p,r,c
       integer, intent(inout) :: s(9,9,9)
      
       integer :: suma, i

       suma = 0
       do i = 1, 9
          suma = suma + s(p,i,c)
       end do
       sumacol = suma
    end function 
      
end module 
