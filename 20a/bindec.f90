program bindec
   implicit none

   integer :: n, c, r, s, p

   !- pedir numero n
   write (*,*) "numero en binario?"
   read (*,*) n

   c = n
   s = 0
   p = 0

   do while (c /= 0)
      r = mod (c , 10)
      s = s + (r * 2**p)
      c = c / 10
      p = p + 1
   end do

   write (*,*) "el numero ", n," binario equivale a ", s, " en decimal"

end program
