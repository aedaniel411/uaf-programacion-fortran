program tablita
   implicit none
   integer :: x

   write (*,*) "Tablas de multiplicar"

   do x = 99, 102
      call tabla(x)
      write (*,*)
   end do

stop
contains

   subroutine tabla (n)
      integer :: n
      integer :: c

      do c = 1, 10
         write (*,'(I3,A,I3,A,I4)') n, 'x', c, '=', n * c
      end do

   end subroutine

end program
