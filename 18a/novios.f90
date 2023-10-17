program novios
   implicit none
   integer :: n

   write (*,*) "numero"
   read (*,*) n
   call tienenovio(n)
stop
contains

   integer function sumadiv(n)
      integer :: n
      integer :: s, i
      s = 0
      do i = 1, n
         if (mod(n,i) == 0) then
            s = s + i
         end if
      end do
      sumadiv = s
   end function

   subroutine tienenovio(n)
      integer :: n
      integer :: sn, pretendiente, sp
      sn = sumadiv(n)
      pretendiente = sn - n - 1
      sp = sumadiv(pretendiente)
      if (sn == sp) then
         write(*,*) pretendiente
      else
         write(*,*) 0
      end if
   end subroutine
end program
