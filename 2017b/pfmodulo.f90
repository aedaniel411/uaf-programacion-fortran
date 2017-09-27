program pfmodulo
   use mflectura
   implicit none

   integer :: x
   real :: r
   complex :: c
   double precision :: d

   x = leer_entero("¿entero ? ")
   write (*,*) x

   r = leer_real("¿real ? ")
   write (*,*) r

   c = leer_complejo("¿complejo ? ")
   write (*,*) c

   d = leer_doble("¿doble ? ")
   write (*,*) d

end program
