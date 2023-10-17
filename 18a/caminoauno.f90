program caminoauno
   implicit none
   integer :: n

   write (*,*) "numero"
   read (*,*) n
   write (*,*) pathto1(n)

stop
contains

   integer function pathto1(n)
      integer :: n
      integer :: x, s
      s = 0
      x = n

      do while (x /= 1)
         if (mod (x,2) == 0) then
            x = x / 2
         else
            x = x * 3 + 1
         end if
         s = s + 1
      end do

      pathto1 = s
   end function

end program
