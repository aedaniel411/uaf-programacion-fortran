program p85
   implicit none

   print *, f85()

stop
contains
   real function f85()
      integer :: k
      real :: s

      s = 0
      do k = 0, 6
         s = s + (1)
      end do

      f85 = s
   end function

end program
