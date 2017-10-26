program gaussjordan
   use mostrar
   implicit none

   real :: matriz(100,200), piv, temp
   integer :: r, c, nr, nc, p

   print *, "¿cuantas r?"
   read (*,*) nr

   matriz = 0
   nc = 2*nr

   do r = 1, nr
      matriz (r,r+nr) = 1
   end do

   do r = 1, nr
      do c = 1, nr
         print '(a,i2,a,i2,a,$)', "dame el dato(",r,",",c,"): "
         read (*,*) matriz(r,c)
      end do
   end do

   print *
   print *
   call VerMatrizReal(matriz,nr,nc)

   do p = 1, nr
      piv = matriz(p,p)
      do c = 1, nc
         matriz(p,c) = matriz(p,c) / piv
      end do

      do r = 1, nr
         if (r /= p) then
            temp = matriz (r,p)
            do c = 1, nc
               matriz(r,c) = matriz(r,c) - temp*matriz(p,c)
            end do
         end if

      end do

   end do

   print *
   print *
   call VerMatrizReal(matriz,nr,nc)

end program
