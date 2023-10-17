program p3
   implicit none

   integer :: m(3,3), ren, col, x = 1

   do ren = 1, 3
      do col = 1, 3
         m (ren, col) = x
         x = x + 1
      end do
   end do

   do ren = 1, 3
      do col = 1, 3
         write (*,'(i3,$)') m(ren, col)
      end do
      write (*,*)
   end do

   open (unit=21, file='matrix.dat', status='new')
   write (21,*) m
   close (21)
end program 
