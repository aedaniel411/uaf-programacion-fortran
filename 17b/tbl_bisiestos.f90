program tbl_bisiestos
   implicit none
   integer :: a1, a2, a

   write (*,*) "primer año:"
   read (*,*) a1
   write (*,*) "segundo año"
   read (*,*) a2

   do a = a1, a2
      if (esbisiesto(a)) then
         write (*,*) a 
      end if
   end do
stop
contains
   logical function esbisiesto(x)
      integer :: x
      logical :: p, q, r, b

      p = (mod(x, 4) == 0)
      q = (mod(x, 100) == 0)
      r = (mod(x, 400) == 0)

      b = (p .and. ((.not.(q)) .or. (r) )  )

      esbisiesto = b
   end function
end program
