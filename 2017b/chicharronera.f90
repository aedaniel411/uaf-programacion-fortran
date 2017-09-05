program chicharronera
   implicit none

   real :: a, b, c, r
   real :: x1, x2

   write (*,*)
   write (*,*) "Programa para resolver una ecuación de segundo orden por medio de la formula general"
   write (*,*)
   write (*,'(A,$)') "Valor de a : "
   read (*,*) a
   write (*,'(A,$)') "Valor de b : "
   read (*,*) b
   write (*,'(A,$)') "Valor de c : "
   read (*,*) c
   r = b**2 - 4*a*c

   if (r >= 0) then
      !es real
      write (*,*) "Raiz real"
   else
      !es imaginaria
      write (*,*) "Raiz imaginaria"
   end if
   
   x1 = ((-b) + (r)**(0.5)) / (2 * a)
   x2 = ((-b) - (r)**(0.5)) / (2 * a)

   write (*,*) "Valor de x1 : ", x1
   write (*,*) "Valor de x2 : ", x2
end program
