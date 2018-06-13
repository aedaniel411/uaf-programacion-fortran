program piramide
   implicit none

   integer :: n, r, c1, c2, c3
   n = 15

   do r = 1, n
      do c1 = 1, n - r
         write (*,'(A3,$)') " "
      end do
      do c2 = 1, r
         write (*,'(i3,$)') c2
      end do
      do c3 = r -1, 1, -1
         write (*,'(i3,$)') c3
      end do
      write (*,*)
   end do

end program
