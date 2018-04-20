program ungly1
   implicit none
   integer :: n, c, r

   write (*,*) "dame un numero"
   read (*,*) n

   c = n
   do while (mod (c,2) == 0)
      !write (*,*) c , "|", 2
      c = c / 2
   end do
   do while (mod (c,3) == 0)
      !write (*,*) c , "|", 3
      c = c / 3
   end do
   do while (mod (c,5) == 0)
      !write (*,*) c , "|", 5
      c = c / 5
   end do
   !write (*,*) c
   if (c == 1) then
      write (*,*) n, " es feo"
   else
      write (*,*) n, " es bonito"
   end if 
end program
