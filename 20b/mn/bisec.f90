program bisec
   implicit none
   real :: a, b, xr

   do
      write (*,*) "Dame el valor de A:"
      read (*,*) a
      write (*,*) "Dame el valor de B:"
      read (*,*) b

      if (f(a) * f(b) <= 0) then
         write (*,*) "si hay raiz"
         exit
      end if
   end do

   do 
      xr = (a + b) / 2.0
      
      if (f(a) * f(xr) == 0) then
         write (*,*) "encontro raiz"
         exit
      end if

      if (f(a) * f(xr) > 0) then
          a = xr
      else
          b = xr
      end if
   end do

   write (*,*) "xr = ", xr, f(xr)

stop
contains

   real function f(x)
      real :: x

      f = 5*x**3 - 5*x**2 + 6*x - 2

   end function
end program
