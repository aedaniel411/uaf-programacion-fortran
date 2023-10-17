program palindromo
   implicit none

   integer :: n

   write (*,*) "numero n:"
   read (*,*) n

   if (espalindromo(n)) then
      write (*,*) n , "es palindromo"
   else
      write (*,*) n , " NO es palindromo"
   end if
stop
contains
   logical function espalindromo(n)
      integer :: n
      integer :: m
      
      m = girar(n)
      
      espalindromo = n == m
   end function

   integer function girar(n)
      integer :: n
      integer :: suma, c, r

      suma = 0
      c = n
      
      do while (c /= 0)
         r = mod (c, 10)
         c = c / 10
         suma = (suma * 10) + r
      end do

      girar = suma
   end function

end program
