program p4
   implicit none

   integer :: a(3,3) , r, c

   open (unit=65, file='matrix.dat', status='old')
   read (65,*) a
   close(65)

   do r = 1, 3
      do c = 1, 3
         write (*,'(i4, $)') a(r,c)
      end do
      write (*,*)
   end do

end program
