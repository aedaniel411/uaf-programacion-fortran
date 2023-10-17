program tirop
   implicit none
   real :: v0, a
   real :: ttotal, g = 9.81, n, t, tinc
   real :: x, y
   character*32 :: archivo
   integer :: repetir

   do
      write (*,*) "Velocidad inicial?"
      read (*,*) v0

      write (*,*) "angulo"
      read (*,*) a
      a = d2r(a)

      write (*,*) "en qué archivo se van a guardar?"
      read (*,*) archivo

      !write (*,*) "cuantos puntos?"
      !read (*,*) n
      n = 1000

      write (*,*) "Datos iniciales: "
      write (*,*) "Velocidad inicial: ", v0
      write (*,*) "Angulo en radianes: ", a

      ttotal = 2.0 * v0 * sin (a) / g
      tinc = ttotal / n

      write (*,*) "Tiempo total ", ttotal
      write (*,*) "incremento", tinc

      open(unit=40, file=trim(archivo), status='new')

      t = 0.0
      do while ( t <= ttotal)
         x = v0 * cos(a) * t
         y = (v0 * sin(a) * t) - (0.5 * g * t**2.0)
         write (40,*) t, x, y
         t = t + tinc
      end do

      close(40)

      write (*,*)
      write (*,*) "Repetir el programa?"
      write (*,*) "0 para SI"
      write (*,*) "cualquier numero para NO"
      read (*,*) repetir
      if (repetir /= 0) exit
   end do
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
