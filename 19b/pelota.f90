program pelota
   implicit none

   real :: x1, y1, z1, x2, y2, z2
   real :: r, g
   real :: a, b, c
   real :: t, dt
   integer :: n, i

   r = 2
   n = 100000
   dt =  grados2radianes(10.0)
   g = 9.8

   t  = 0
   x1 = 1.0
   y1 = 0.0
   z1 = 1000.0

   open (unit=71, file='datitos.txt', status='new')

   do i = 1, n
      x2 =  compox(r,t)
      y2 =  compoy(r,t)
      z2 =  0!* t + z1

      t = t + dt
      x1 = x2
      y1 = y2
      z1 = z2
      write (71,*) x1, y1, z1
   end do

   close (71)

contains
   real function grados2radianes(x)
      real :: x
      real :: pi

      pi = 4.0 * atan(1.0)

      grados2radianes = x * pi / 180
   end function

   real function radianes2grados(x)
      real :: x
      real :: pi

      pi = 4.0 * atan(1.0)

      radianes2grados = x * 180.0 / pi
   end function

   real function compox(m,d)
      real :: m, d

      compox = m * cos( grados2radianes(d) )
   end function

   real function compoy(m,d)
      real :: m, d

      compoy = m * sin( grados2radianes(d) )
   end function

   real function magres(x1,x2,y1,y2)
      real :: x1,x2,y1,y2
      real :: xr, yr

      xr = x1 + x2
      yr = y1 + y2

      magres = (xr**2.0 + yr**2.0)**(0.5)

   end function

   real function dirres(x1,x2,y1,y2)
      real :: x1,x2,y1,y2
      real :: xr, yr

      xr = x1 + x2
      yr = y1 + y2

      dirres = radianes2grados(atan2 (yr,xr))

   end function
end program

