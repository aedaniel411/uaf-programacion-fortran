program romanos_if_ani
   implicit none

   integer :: n

   print *, "Numero decimal"
   read (*,*) n

   if (n == 1) then
      print *, "i"
   else
      if (n == 2) then
         print *, "ii"
      else
         if (n == 3) then
            print *, "iii"
         else
            if (n == 4) then
               print *, "iv"
            else
               if (n == 5) then
                  print *, "v"
               end if
            end if
         end if
      end if
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
