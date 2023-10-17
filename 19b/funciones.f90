program funciones
   implicit none
 
   integer :: a

   write (*,*) "Dame un numero:"
   read (*,*) a

   write (*,*) "el cubo de ", a," es: ", cubo(a)

stop
contains 

   integer function cuadrado (x)
	! -- Definir variables que recibe la funcion
        integer :: x
	! -- codigo de la funcion
        cuadrado = x * x
   end function
   integer function cubo (x)
        integer :: x
        cubo = x * x * x
   end function

end program
