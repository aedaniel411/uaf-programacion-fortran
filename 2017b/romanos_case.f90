program romanos_case
   implicit none

   integer :: n

   print '(A,$)', "Numero decimal: "
   read (*,*) n

   select case (n)
      case (1)
         print *, "i"
      case (2)
         print *, "ii"
      case (3)
         print *, "iii"
      case (4)
         print *, "iv"
      case (5)
         print *, "v"
      case (6)
         print *, "vi"
      case (7)
         print *, "vii"
      case (8)
         print *, "viii"
      case (9)
         print *, "ix"
      case (10)
         print *, "x"
   end select

end program
