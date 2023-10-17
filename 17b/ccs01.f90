program ccs01
   implicit none
   integer :: x

   print *,"cuantos renglones?"
   read (*,*) x

   call cosa (x)
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

   subroutine cosa (r)
      integer :: r, i
      do i = 1, r
         call aster (r,"*")
      end do
   end subroutine

end program
