module modulo
   implicit none

contains
   subroutine cm2plg (x, y)
      real :: x, y
      y = x / 2.54
   end subroutine
   subroutine plg2cm (x, y)
      real :: x, y
      x = y * 2.54
   end subroutine
end module
