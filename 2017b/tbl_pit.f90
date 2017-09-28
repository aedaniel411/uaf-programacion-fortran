program tbl_pit
   implicit none
   integer :: c, r

   do r = 1, 10
      !-----------
      do c = 1, 10
         write (*,'(i3,$)') r * c
      end do

      write (*,*)
      !-----------
   end do

end program
