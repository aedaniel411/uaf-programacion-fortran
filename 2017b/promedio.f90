program promedio
   implicit none
   real :: a, s
   integer :: i, n
   
   print *, "¿cuantos numeros quieres promediar?"
   read (*,*) n

   s = 0
   do i = 1 , n
      print *,"numero?"
      read (*,*) a
      s = s + a
   end do

   print *, "promedio: ", s / n

end program
