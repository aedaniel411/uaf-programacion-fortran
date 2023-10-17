program e2fibo
   implicit none
   write (*,*) esfibo(6)
   write (*,*) esfibo(7)
   write (*,*) esfibo(8)
   write (*,*) esfibo(13)
stop
contains
   integer function esfibo (x)
      integer :: x
      !---- escribe tu solucion aqui
      integer :: a, b, c
      a = 0
      b = 1
      c = 1
      do while (c <= x)
         c = a + b
         a = b
         b = c
      end do
      if (x == a) then
         esfibo = 1
      else
         esfibo = 0
      end if
   end function
end program
