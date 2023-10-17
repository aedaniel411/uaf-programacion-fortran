module mflectura
   implicit none

contains
   integer function leer_entero(m)
      character*32 :: m
      integer :: n

      write (*,'(A,$)') trim(m)
      read (*,*) n

      leer_entero = n
   end function

   real function leer_real(m)
      character*32 :: m
      real :: n

      write (*,'(A,$)') trim(m)
      read (*,*) n

      leer_real = n
   end function

   complex function leer_complejo(m)
      character*32 :: m
      complex :: n

      write (*,'(A,$)') trim(m)
      read (*,*) n

      leer_complejo = n
   end function

   double precision function leer_doble(m)
      character*32 :: m
      double precision :: n

      write (*,'(A,$)') trim(m)
      read (*,*) n

      leer_doble = n
   end function

end module
