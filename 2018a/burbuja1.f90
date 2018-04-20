program burbuja1
   implicit none
   integer :: a(8), n, i, j, aux

   a = (/ 15, 67, 08, 16, 44, 27, 12, 35 /)
   n = 8

   write (*,*) "Arreglo: ", a

   do i = 2, n

      do j = n, i, -1

         if (a(j - 1) > a(j)) then
            !- Realizar intercambio
            aux = a(j - 1)
            a(j - 1) = a(j)
            a(j) = aux
         end if

      end do

      write (*,*) "Pasada ", i - 1, ", arreglo: ", a
   end do

end program
