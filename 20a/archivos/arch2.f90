program arch2
   implicit none

   integer :: a, i
   real    :: x

   open (unit=43, file='datos.txt', status='old')

   do i = 1, 100
      read (43,*) a, x   
      write (*,*) a, x
   end do

   close(43)
end program
