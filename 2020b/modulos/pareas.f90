program pareas
   use mareas

   implicit none

   real :: r

   write (*,*) "Dame el radio del circulo:"
   read(*,*) r

   write (*,*) "Area = ", area_circulo(r)   

end program
