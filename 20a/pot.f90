program pot
   implicit none

   integer :: x, p

   write (*,*) "valor de x:"
   read (*,*) x
   p = 0
   
   !- ciclo infinito
   do
      p = p + 1

      if (2**p > x) then
         exit
      end if
   end do

   write (*,*) "2 a la potencia ", p,"es mayor a ", x
end program
