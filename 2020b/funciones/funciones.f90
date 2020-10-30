program funciones
   implicit none

   real :: z

   write (*,*) "dame el valor del radio:"
   read (*,*) z

   write (*,*) "Area = ", area_circulo(z)

stop
contains
   real function area_circulo(radio)
      real :: radio
      real :: pi = 4.0 * atan(1.0)
      
      area_circulo = pi * radio ** 2
   end function
 
   real function area_rectangulo(base, altura)
      real :: base, altura

      area_rectangulo = base * altura
   end function

   real function area_cuadrado(lado)
      real :: lado
      real :: temporal

      temporal = lado * lado

      area_cuadrado = temporal
   end function

end program
