program tres_num
   implicit none

   integer :: a, b, c, t

   print *, "dame tres numeros enteros"
   read (*,*) a, b, c

   if (a > b) then
      t = a
      a = b
      b = t
   end if

   if (a > c) then
      t = a
      a = c
      c = t
   end if

   if (b > c) then
      t = b
      b = c
      c = t
   end if

   print *, "mayor es", c
   print *, "menor es", a
end program
