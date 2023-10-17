program funciones
   implicit none

   real :: x

   write (*,*) "cuantos pulgadas?"
   read (*,*) x

   write (*,*) x, " eqivalen a ", plg2cm(x), " en centimetros"

stop
contains
   real function cm2plg(c)
      real :: c
      cm2plg = c / 2.54
   end function

   real function plg2cm (p)
      real :: p
      plg2cm = p * 2.54
   end function
end program
