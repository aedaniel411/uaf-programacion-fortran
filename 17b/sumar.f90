program sumar
   implicit none
   integer :: a, s, i, n

   print *, "¿cuantos numeros quieres sumar?"
   read (*,*) n

   s = 0
   do i = 1 , n 
      print *,"numero?"
      read (*,*) a
      s = s + a
   end do

   print *, "suma: ", s

end program
