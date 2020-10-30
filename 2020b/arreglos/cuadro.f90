program cuadro
   implicit none

   integer :: n, x, ren, col
   integer :: cuad(15,15)

   write (*,*) "Tamaño (max 15) del cuadro?"
   read (*,*) n

   cuad = 0
   ren = 1
   col = (n / 2) + 1
   
   do x = 1, n**2
      cuad(ren, col) = x
      
      if (mod(x, n) == 0) then
         ren = ren + 1
      else
         ren = ren - 1
         if (ren == 0) ren = n

         col = col + 1
         if (col > n) col = 1
      end if

   end do

!- Mostrar en pantalla

   do ren = 1, n
      do col = 1, n
         write(*,'(i4,$)') cuad(ren,col)
      end do
      write (*,*)
   end do

end program
