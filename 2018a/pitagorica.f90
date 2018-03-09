program pitagorica
   implicit none

   integer :: ren, col

   do ren = 10, 1, -1

      do col = 1, 10
         write (*,'(I4,$)') ren * col
      end do

      write (*,*)
   end do

end program
