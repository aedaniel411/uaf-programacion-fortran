program datos
   implicit none

   complex :: h, i 

   write (*,*) "dame dos numeros complejos:"
   read (*,*) h, i

   write (*,*) h / i

end program
