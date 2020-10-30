program girar
   implicit none
   integer :: n, c, r, s

   write (*,*) "numero?"
   read (*,*) n
 
   c = n
   s = 0

   do while (c /= 0 )
      r = mod (c, 10)
      c = c / 10
     
      s = (s * 10) + r
   end do

   write (*,*) s 

end program
