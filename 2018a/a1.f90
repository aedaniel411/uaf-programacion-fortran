program a1
   implicit none
   integer :: n, ren, col

   write (*,*) "cuantos ren?"
   read (*,*) n

   do ren = n, 1, -1
      do col = 1, ren
         write(*,'(a,$)')"*"
      end do
      write (*,*)
   end do
end program
