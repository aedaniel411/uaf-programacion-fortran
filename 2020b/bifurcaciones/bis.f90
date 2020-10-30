program bis
   implicit none
 
   integer :: a

   write (*,*) "Año: "
   read (*,*) a 

   if ( mod(a, 4) == 0 ) then
      
      if ( mod(a, 100) == 0  ) then
         
         if (mod(a,400) == 0 ) then
            write (*,*) "año bis"
         else 
            write (*,*) "no bisiesto"
         end if

      else
         write (*,*) "año bisiesto"
      end if

   else 
      write (*,*) "no bisiesto"
   end if

end program

