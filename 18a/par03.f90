program par03
   implicit none
   integer :: a

   write (*,*) "Dame un numero para ver si es par"
   read (*,*) a

   if (espar(a)) then
      write (*,*) "si es"
   else
      write (*,*) "no es"
   end if
stop
contains
   logical function espar(n)
      integer :: n

      espar = mod(n,2) == 0
   end function
end program
