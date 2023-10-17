program multiplica
   implicit none
   integer :: renglon, columna


   do renglon = 1, 10

      do columna = 1, 10
         write (*,'(i5,$)') renglon * columna	   
      end do

      write (*,*) 
   end do
   
end program
