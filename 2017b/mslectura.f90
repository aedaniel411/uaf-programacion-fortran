module mslectura
   implicit none

contains
   subroutine leer_entero(m, n)
      character*32 :: m
      integer :: n

      write (*,'(A,$)') trim(m)
      read (*,*) n

   end subroutine
end module
