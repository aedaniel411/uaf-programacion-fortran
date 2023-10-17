program p90
   implicit none

   print *, f90()

stop
contains
   real function f90()
      integer :: q
      real :: s

      s = 0
      do q = -3, 5
         s = s + ( ((-1)**(q + 1)) * ((q + 2.0)/(q + 4.0)) )
      end do

      f90 = s
   end function

end program
