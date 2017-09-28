program tabla_multiplicar
   implicit none
   integer :: n, i

   write (*,*) "¿de qué tabla de multiplicar quieres?"
   read (*,*) n

   do i = 1, 10
      write (*,'(i2,a,i2,a,i3)') n, "x", i, "=", n * i
   end do

end program
