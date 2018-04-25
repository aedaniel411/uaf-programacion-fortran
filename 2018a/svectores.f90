program svectores
   implicit none

   type vector
      real :: angulo, magnitud
      real :: comx, comy
   end type

   type (vector) :: v1, v2, suma

   write (*,*) "dame angulo v1"
   read (*,*) v1%angulo
   write (*,*) "dame magnitud v1"
   read (*,*) v1%magnitud
   v1%angulo = d2r(v1%angulo)

   write (*,*) "dame angulo v2"
   read (*,*) v2%angulo
   write (*,*) "dame magnitud v2"
   read (*,*) v2%magnitud
   v2%angulo = d2r(v2%angulo)

   v1%comx = v1%magnitud * cos(v1%angulo)
   v1%comy = v1%magnitud * sin(v1%angulo)

   v2%comx = v2%magnitud * cos(v2%angulo)
   v2%comy = v2%magnitud * sin(v2%angulo)

   suma%comx = v1%comx + v2%comx
   suma%comy = v1%comy + v2%comy

   suma%magnitud = sqrt(suma%comx**2 + suma%comy**2)
   suma%angulo = r2d (atan2(suma%comy , suma%comx))

   write (*,*) suma%magnitud, suma%angulo

stop
contains
   real function d2r (x)
      real :: x
      real :: pi = 4.0 * atan(1.0)
      d2r = x * pi / 180.0
   end function
   real function r2d (x)
      real :: x
      real :: pi = 4.0 * atan(1.0)
      r2d = x * 180.0 / pi
   end function
end program
