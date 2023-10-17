program multiplica
   use mostrar
   implicit none
   integer :: a(2,2), b(2,2), matc(2,2)
   integer :: r, c, k, nr, nc, s

   nr = 2
   nc = 2
   do r = 1, nr
      do c = 1, nc
         write (*,*) "elemento a", r, c
         read (*,*) a(r,c)
      end do
   end do
   do r = 1, nr
      do c = 1, nc
         write (*,*) "elemento b", r, c
         read (*,*) b(r,c)
      end do
   end do

   write (*,*)
   call VerMatrizEntera(a,nr,nc)
   write (*,*)
   call VerMatrizEntera(b,nr,nc)

   do r = 1, nr
      do c = 1, nc
         s = 0
         do k = 1, nr
            s = s + (a(r,k) * b(k,c))
         end do
         matc(r,c) = s
      end do
   end do

   write (*,*)
   call VerMatrizEntera(matc,nr,nc)
end program
