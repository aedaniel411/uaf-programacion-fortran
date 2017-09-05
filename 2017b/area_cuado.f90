program area
   implicit none

   integer :: L

   write (*,*)
   write (*,*) "Programa para calcular el area de un cuadrado"
   write (*,*)
   
   ! leer (L)
   write (*,'(A, $)') "Dame el valor de L :"
   read (*,*) L

   ! Escribir (L * L)
   write (*,*) "El Area es:", L * L

end program
