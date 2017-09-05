program chicharronera
   implicit none

   complex :: a, b, c
   real :: x1, x2, r
   complex :: xc1, xc2

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
      x1 = ((-b) + (r)**(0.5)) / (2 * a)
      x2 = ((-b) - (r)**(0.5)) / (2 * a)

      write (*,*) "Valor de x1 : ", x1
      write (*,*) "Valor de x2 : ", x2
   else
      !es imaginaria
      write (*,*) "Raiz imaginaria"
      xc1 = ((-b) + (r)**(0.5)) / (2 * a)
      xc2 = ((-b) - (r)**(0.5)) / (2 * a)

      write (*,*) "Valor de x1 compleja : ", xc1
      write (*,*) "Valor de x2 compleja : ", xc2

   end if

end program
