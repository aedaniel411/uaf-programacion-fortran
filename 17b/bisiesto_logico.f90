program bisiesto_logico
   implicit none

   integer :: x
   logical :: p, q, r, b

   print *, "dame un año:"
   read (*,*) x

   p = (mod(x, 4) == 0)
   q = (mod(x, 100) == 0)
   r = (mod(x, 400) == 0)

   b = (p .and. ((.not.(q)) .or. (r) )  )

   if (b) then
      print *, x, "es bisiesto"
   else
      print *, x, "no es bisiesto"
   end if

end program
