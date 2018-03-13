program divide01
   implicit none
   integer :: x, y

   write (*,*) "Dame dos numeros enteros:"
   read (*,*) x, y
   write(*,*) "valores: ", x, y

   call divide(x,y)

stop
contains
   subroutine divide(a,b)
      integer :: a, b
      if (a > b) then
         write (*,*) a / b
      else
         write (*,*) b / a 
      end if
   end subroutine
end program
