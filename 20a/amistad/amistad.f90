program amistad 
   implicit none
 
   integer :: n, a, b, i 

   write (*,*) "numero N:"
   read (*,*) n

   do i = 1, n
      a = sumacuad(i)
      b = sumacuad(a)
      
      if (i == b) then
         write (*,*) i, a, b
      end if
   end do
stop
contains
   integer function sumacuad(n)
      integer :: n
      integer :: r, c, suma
      r = mod(n, 10)
      c = n / 10
      suma = r ** 4

      do while (c /= 0)
         r = mod (c, 10)   
         c = c / 10
         suma = suma + r ** 4
      end do

      sumacuad = suma
   end function
end program
