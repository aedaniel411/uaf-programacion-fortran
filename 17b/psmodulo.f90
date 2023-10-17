program psmodulo
   use mslectura
   implicit none

   integer :: x

   call leer_entero("¿dame la magnitud de vector? ", x)

   write (*,*) "x es:", x

end program
