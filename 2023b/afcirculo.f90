program afcirculo
   implicit none
   real :: r 

   write (*,*) "radio:"
   read (*,*) r

   write (*,*) "area = ", fcirculo(r)

   stop
   contains

   real function fcirculo(radio)
 	real :: radio
        real :: a
        real, parameter :: pi = 4.0 * atan(1.0)

        a = pi * radio ** 2

        fcirculo = a      
   end function   

end program
