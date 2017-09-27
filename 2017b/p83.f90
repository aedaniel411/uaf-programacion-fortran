program p83
   implicit none

   print *, f83()

stop
contains
   integer function f83()
      integer :: s, k

      s = 0
      do k = 1, 4
         s = s + (2 * k)
      end do

      f83 = s
   end function

end program
