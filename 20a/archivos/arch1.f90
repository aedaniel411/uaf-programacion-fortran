program arch1
   implicit none
   real :: n
   integer :: i

   open(unit=89,file='datos.txt',status='new')
   open (unit=90, file='datos2.dat', status 'new')
   write (90, *) "registro"
   close (90)

   do i = 1, 100

      call random_number(n)
      !- Guardar N en un archivo

      write (89,*) i, n

   end do
   close(89)
end program
