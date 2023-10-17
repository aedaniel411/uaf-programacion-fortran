program criba
   implicit none
   integer :: x, matriz(10,10), r, c, n

   x = 0
   do r = 1, 10
      do c = 1, 10
         x = x + 1
         matriz (r,c) = x
      end do
   end do

   do r = 1, 10
      do c = 1, 10
         write (*,'(I5,$)') matriz (r,c)
      end do
      write (*,*)
   end do
   read (*,*)

   do n = 10, 2, -1
      do r = 1, 10
         do c = 1, 10
            if ((mod(matriz(r,c),n)== 0) .and. (matriz(r,c) /= n))then
               matriz(r,c) = 0
            end if
            if (matriz(r,c)==0) then
                  write (*,'(A5,$)') "-"
            else
               write (*,'(I5,$)') matriz (r,c)
            end if 
         end do
         write (*,*)
      end do
      read (*,*)
   end do

end program
