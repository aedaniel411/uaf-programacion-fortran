program narcisista
   implicit none
   integer :: n
   write (*,*) "numero"
   read (*,*) n
   call esnarcisista(n)
stop
contains

   integer function contard(n)
      integer :: n
      integer :: x, c

      x = 0
      c = n
      do while (c > 0)
         c = c / 10
         x = x + 1
      end do
      contard = x
   end function

   subroutine esnarcisista(n)
      integer :: n
      integer :: d, s, r, c

      d = contard(n)
      s = 0
      c = n
      do while (c > 0)
         r = mod(c,10)
         c = c / 10
         s = s + (r**d)
      end do

      if (n == s) then
         !es narcisista
         write(*,*) 1
      else
         !no lo es
         write(*,*) 0
      end if


   end subroutine

end program
