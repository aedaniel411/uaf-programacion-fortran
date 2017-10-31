module mostrar

contains
   subroutine VerMatrizEntera(matriz,nr,nc)
      integer :: matriz(2,2)
      integer :: nr, nc, r, c
      do r = 1, nr
         do c = 1, nc
            print '(i3,$)', matriz(r,c)
         end do
         print *
      end do
   end subroutine

   subroutine VerMatrizReal(matriz,nr,nc)
      real :: matriz(100,101)
      integer :: nr, nc, r, c
      do r = 1, nr
         do c = 1, nc
            print '(f7.2,$)', matriz(r,c)
         end do
         print *
      end do
   end subroutine

   subroutine VerMatrizVida(matriz,nr,nc)
      integer :: matriz(24,60)
      integer :: nr, nc, r, c
      do r = 1, nr
         do c = 1, nc
            print '(i2,$)', matriz(r,c)
         end do
         print *
      end do
   end subroutine
   subroutine VerMatrizVidaC(matriz,nr,nc)
      integer :: matriz(24,60)
      integer :: nr, nc, r, c
      do r = 1, nr
         do c = 1, nc
            if (matriz(r,c)==0) then
               print '(a,$)', " "
            else
               print '(a,$)', "*"
            end if
         end do
         print *
      end do
   end subroutine

end module
