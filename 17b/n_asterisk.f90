program n_asterisk
   implicit none
   integer :: m
   character :: letritas

   print *, "¿qué letra?"
   read(*,*) letritas

   print *, "¿cuántas letra?"
   read(*,*) m

   call aster(m, letritas)
stop
contains

   subroutine aster(n, c)
      integer :: n
      character :: c
      integer :: i 

      do i = 1, n
         print '(a,$)', c
      end do
      print *,

   end subroutine

end program
