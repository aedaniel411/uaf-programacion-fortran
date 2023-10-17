program romanos_if
   implicit none

   integer :: n

   print *, "Numero decimal"
   read (*,*) n

   if (n == 1) then
      print *, "i"
   end if

   if (n == 2) then
      print *, "ii"
   end if
   if (n == 3) then
      print *, "iii"
   end if
   if (n == 4) then
      print *, "iv"
   end if
   if (n == 5) then
      print *, "v"
   end if
   if (n == 6) then
      print *, "vi"
   end if
   if (n == 7) then
      print *, "vii"
   end if
   if (n == 8) then
      print *, "viii"
   end if
   if (n == 9) then
      print *, "ix"
   end if
   if (n == 10) then
      print *, "x"
   end if

end program
