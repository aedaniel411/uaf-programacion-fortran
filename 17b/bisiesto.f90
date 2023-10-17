program bisiesto
   implicit none

   integer :: x

   print *, "dame un año:"
   read (*,*) x

   print *, "año:", x, mod(x,4)

   if (mod (x,4) == 0) then
      print *, "multiplo de 4 tiene posibilidad de ser bisiesto"

      if (mod (x, 100) == 0) then
         print *, "multiplo de 100"

         if (mod (x,400) == 0) then
            print *,"multiplo de 400, es bisiesto"
         else
            print *,"no multiplo de 400, no es bisiesto"
         end if

      else
         print *, "no multiplo de 100, Si es bisiesto"
      end if

   else
      print *, "no multiplo de 4 definitivamente no es bisiesto"
   end if

end program
