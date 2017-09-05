program trian
   implicit none

   integer :: b, h
 
   write (*,*)
   write (*,*) "Programa para calcular el area del triangulo"
   write (*,*)

   write (*,'(A,$)') "Dame la base:" 
   read (*,*) b
   write (*,'(A,$)') "Dame la altura:"
   read (*,*) h

   write (*,*) "El area es:", (b * h) / 2.0

end program  
   
