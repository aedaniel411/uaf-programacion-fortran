program divi
   implicit none
   integer :: x, y, i

   write (*,*) "¿inicio?"
   read (*,*) x
   write (*,*) "¿fin?"
   read (*,*) y

   do i = x, y
      if (esprimo(i)) then
         write (*,*) i 
      end if
   end do

stop
contains
   integer function cuantosdiv(n)
      integer :: n
      integer :: s, i

      s = 0
      do i = 1, n
         if (mod(n,i) == 0) then
            s = s + 1
         end if
      end do
      cuantosdiv = s
   end function
   logical function esprimo(n)
      integer :: n
      esprimo = cuantosdiv(n) == 2
   end function
end program
