program lorenz
   implicit none

   real :: x1, y1, z1, x2, y2, z2
   real :: a, b, c
   real :: t
   integer :: n, i

   n = 100000
   t = 0.001

   a = 10.0
   c = 8.0/3.0
   b = 28.0

   x1 = 1.0
   y1 = 1.0
   z1 = 1.0

   open (unit=71, file='datitos.txt', status='new')

   do i = 1, n
      x2 = (a * (y1-x1))      * t + x1
      y2 = (x1 * (b-z1) - y1) * t + y1
      z2 = (x1 * y1 - c * z1) * t + z1
      x1 = x2
      y1 = y2
      z1 = z2
      write (71,*) x1, y1, z1
   end do

   close (71)
end program
