program gauss
   implicit none

   real :: matriz(20,20), x, minverza(20,20)
   integer :: n, ren, col, p

   write (*,*) "dimension matriz:"
   read (*,*) n

   !- Inicializar matriz inverza
  
   minverza = 0
   do ren = 1, n
      minverza (ren, ren) = 1
   end do

   do ren = 1, n
      do col = 1, n
         write (*,*) "elemento(",ren,",",col,"):"
         read (*,*) matriz(ren, col)
      end do
   end do 
   call escribirsec(matriz, n)
   call escribirsec(minverza, n)

   !- pivoteo
   do p = 1, n
      x = matriz(p, p)
      do col = 1, n
         matriz(p, col) = matriz(p, col) / x
         minverza(p, col) = minverza(p, col) / x
      end do      
      !- Ceros
      do ren = 1, n
         if (ren /= p) then
            x = matriz (ren, p)
            do col = 1, n
               matriz (ren, col) = matriz(ren, col) -(matriz(p, col)*x )
               minverza (ren, col) = minverza(ren, col) -(minverza(p, col)*x )
            end do
         end if
      end do
   end do

   call escribirsec(minverza, n)

stop
contains

   subroutine escribirsec(m,n)
   	real :: m(20,20)
        integer :: n, ren, col

        write (*,*)
        do ren = 1, n
           do col = 1 , n
              write (*,'(f5.1,$)' ) m(ren, col)
           end do
           write (*,*)
        end do 
 
   end subroutine   
  
end program
