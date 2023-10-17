program voltear
   implicit none

   integer :: n, m, x
   n = 0

   do while (n <= 100)
      write (*,*) "Dame un numero"
      read (*,*) n
   end do

   x = n
   write (*,*) n
   write (*,*) voltea(n)
   m = voltea(n)
   write (*,*) n,m,x
   if (x == m) then
      write (*,*) "es palindromo"
   else
      write (*,*) "No es palindromo"
   end if
stop
contains
   integer function voltea(n)
      integer, intent (in) :: n
      integer :: m, a, x
      x = n
      m = 0
      do while (x > 0)
         a = mod (x,10)
         x = x / 10
         m = m * 10 + a
      end do
      voltea = m
   end function
end program
