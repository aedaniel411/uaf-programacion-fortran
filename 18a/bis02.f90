program bisiesto2
   implicit none
   integer :: a

   write (*,*) "Dame un año para ver si es bisiesto"
   read (*,*) a

   if (esbisiesto(a)) then
      write (*,*) "si es"
   else
      write (*,*) "no es"
   end if
stop
contains
   logical function esbisiesto(n)
      integer :: n
      logical :: p, q, r

      p = mod (n,4) == 0
      q = mod (n,100) == 0
      r = mod (n,400) == 0

      esbisiesto = p .and. (.not.(q) .or. r )
   end function
end program
