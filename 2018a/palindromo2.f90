program palindromo2
   implicit none
   integer :: n

   write (*,*) " un numero"
   read (*,*) n

   write (*,*) n, voltear(n)
   write (*,*) espalindromo(n, voltear(n))
stop
contains
   integer function contard(n)
      integer :: n
      integer :: x, c

      x = 0
      c = n
      do while (c > 0)
         c = c / 10
         x = x + 1
      end do
      contard = x
   end function

   integer function voltear (n)
      integer :: n
      integer :: c,r,i,suma

      suma = 0
      i = contard(n)
      c = n
      do while (c > 0)
         r = mod(c,10)
         c = c / 10
         i = i - 1
         suma = suma + (r * 10 ** i)
      end do
      voltear = suma
   end function

   integer function espalindromo(n,m)
      integer :: n, m
      espalindromo = n - m
   end function

end program
