program tres_num
   implicit none

   integer :: a, b, c

   print *, "dame tres numeros enteros"
   read (*,*) a, b, c

   if ((a >= b) .and. (a >= c)) then
      print *, "a es mayor", a
   end if

   if ((b >= a) .and. (b >= c)) then
      print *, "b es mayor", b
   end if

   if ((c >= a) .and. (c >= b)) then
      print *, "c es mayor", c
   end if

   if ((a < b) .and. (a < c)) then
      print *, "a es menor", a
   end if

   if ((b < a) .and. (b < c)) then
      print *, "b es manor", b
   end if

   if ((c < a) .and. (c < b)) then
      print *, "c es menor", c
   end if
end program
