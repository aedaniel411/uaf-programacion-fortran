program feliz01
   implicit none
   integer :: n, a(100), p

   write (*,*) "dame un numero"
   read (*,*) n

   a = 0 !- todo el arreglo en ceros
   a(1) = n
   p = 1

   do while ((a(p) /= 1) .and. (.not.(busca(a,p))))
      p = p + 1
      a(p) = sumacuad( a(p -1) )
   end do

   !write (*,*) a(1:p)
   write (*,*)

   if (a(p) == 1) then
      write (*,*) n," Es Feliz, en ",p - 1," operaciones"
   else
      write (*,*) n," No es Feliz, en ",p - 1," operaciones"
   end if

stop
contains
   integer function sumacuad(n)
      integer :: n
      integer :: c, r, x, suma

      suma = 0
      x = n
      do while (x > 0)
         c = x / 10
         r = mod(x,10)
         suma = suma + r**2
         x = c
      end do
      sumacuad = suma
   end function

   logical function busca(a,n)
      integer :: a(100), n
      logical :: esta
      integer :: i

      esta = .false.

      do i = 1, n - 1
         esta = esta .or. (a(n) == a(i))
      end do

      busca = esta
   end function
end program
