program burbuja01
   implicit none
   integer :: A(10), n, i, j, aux

   n = 10

   do i = 1, n
      write(*,'(a,i3,a,$)') "A(",i,"):"
      read (*,*) A(i)
   end do

   write (*,*)
   write (*,'(a,10i4)') "A:", A
   write (*,*)

   do i = 2, n 

      do j = n, i, -1
         if (a(j -1) > a(j)) then
            aux = a(j-1)
            a(j-1) = a(j)
            a(j) = aux
         end if
      end do

      write (*,'(a,i3,a,10i4)') "Pasada",i - 1," A:", A
   end do

   write (*,*)
   write (*,'(a,10i4)') "Ordenado Final A:", A
   write (*,*)
end program
