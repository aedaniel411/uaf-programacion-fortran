program conway
   use aleatorios
   use mostrar

   implicit none
   integer :: i, n, vida(24,60), nuevo(24,60), nr, nc, r, c
   real :: x
   call init_random_seed()
   n = 24 * 60
   nr = 24
   nc = 60

   do r = 1, nr
      do c = 1, nc
         call random_number(x)
         vida(r,c) = nint(x)
      end do
   end do
   call system("clear")
   call VerMatrizVidaC(vida,nr,nc)

   do while (.true.)
      do r = 1, nr
         do c = 1, nc
            if (reglas (sumar (vida,r,c))) then
               nuevo(r,c) = 1
            else
               nuevo(r,c) = 0
            end if
         end do
      end do

      vida = nuevo
      !read (*,*)
      call system("sleep 1")
      call system("clear")
      call VerMatrizVidaC(vida,nr,nc)
   end do
stop
contains
   integer function sumar(matriz,y,x)
      integer :: matriz(24,60),x, y
      integer :: i, j, s, ci, cf, ri, rf

      ci = x - 1
      cf = x + 1
      ri = y - 1
      rf = y + 1
      if (ci==0) then
         ci = 1
      end if
      if (cf > 60) cf = 60
      if (ri == 0) ri = 1
      if (rf > 24) rf = 24

      s = 0
      do i = ri, rf
         do j = ci, cf
            s = s + matriz(i,j)
         end do
      end do
      s = s - matriz(y,x)
      sumar = s
   end function

   logical function reglas(x)
      integer :: x
      logical :: r
      r = (x >= 2) .and. (x <= 3)
      reglas = r
   end function
end program
