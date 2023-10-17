program conway
   use aleatorios
   use mostrar

   implicit none
   integer :: i, n, vida(16,16), nr, nc, r, c
   real :: x
   call init_random_seed()
   n = 16 * 16
   nr = 16
   nc = 16

   do r = 1, nr
      do c = 1, nc
         call random_number(x)
         vida(r,c) = nint(x)
      end do
   end do

   call VerMatrizVida(vida,nr,nc)

   write (*,*) sumar(vida,1,1)

stop
contains
   integer function sumar(matriz,y,x)
      integer :: matriz(16,16),x, y
      integer :: i, j, s, ci, cf, ri, rf

      ci = x - 1
      cf = x + 1
      ri = y - 1
      rf = y + 1
      if (ci==0) then
         ci = 1
      end if
      if (cf > 16) cf = 16
      if (ri == 0) ri = 1
      if (rf > 16) rf = 16

      s = 0
      do i = ri, rf
         do j = ci, cf
            s = s + matriz(i,j)
         end do
      end do
      s = s - matriz(y,x)
      sumar = s
   end function
end program
