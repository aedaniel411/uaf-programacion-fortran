program subrutinas
   use modulo
   implicit none

   real :: cm, plg

   print *,"cuantas pulgadas?"
   read (*,*) plg

   call plg2cm (cm, plg)

   print '(f5.2,A,f5.2,A)', plg, "pulgadas equivalen a:", cm, "centimetros"

end program
