program fibonacci
   implicit none

   integer :: n, i

   print *, "cuantos numeros"
   read (*,*) n

   do i = 1, n
      print *, f(i)
   end do

stop
contains
   recursive function f(x) result (r)
      integer :: x, r
      if (x == 1) then
         r = 0
      end if
      if (x == 2) then
         r = 1
      end if
      if (x > 2)then
         r = f(x - 1) + f(x - 2)
      end if
   end function
end program
