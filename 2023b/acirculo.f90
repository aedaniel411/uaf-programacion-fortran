program acirculo
   implicit none

   double precision, parameter :: pi = 4.0D0 * atan(1.0D0)
   double precision :: r, a
!   real*16 :: r, pi, a

   write (*,*) "Cual es el radio? "
   read (*,*) r

!   pi = 4.0D0 * atan(1.0D0)
!   pi = 4.0Q0 * atan(1.0Q0)

!   pi = 3.1
   write (*,*) pi

   a = pi * r**2

   write (*,*) a

end program
