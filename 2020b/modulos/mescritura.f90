module mescritura

   type matriz_real
      real :: m(10,10)
      integer :: nren, ncol
   end type

contains
   subroutine escribe_mat (matriz)
      type (matriz_real) :: matriz

      !- variables locales a la subrutina
      integer :: ren, col

      do ren = 1, matriz%nren
          do col = 1, matriz%ncol
              write (*,'(f8.4, $)') matriz%m(ren, col)
          end do
          write (*,*)
      end do
   end subroutine
end module
