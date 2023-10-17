program bis2
   implicit none
   integer :: a

   write (*,*) "año:"
   read (*,*) a

   if ( esbisiesto(a) ) then
      write (*,*) "si es bis"
   else
      write (*,*) "no es bis"
   end if
stop
contains
   logical function esbisiesto(x)
      integer :: x
      logical :: p, q, r
      p = mod (x, 4) == 0
      q = mod (x, 100) == 0
      r = mod (x, 400) == 0
      esbisiesto = p .and. (.not. q .or. r)
   end function
end program
