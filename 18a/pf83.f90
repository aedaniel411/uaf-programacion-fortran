program pf83
   implicit none

   write (*,*) f83()
   write (*,*) f84()
   write (*,*) f85()
   write (*,*) f90()
   write (*,*) f91()

stop
contains
   integer function f83()
      integer :: suma, k
      suma = 0
      do k = 1, 4
         suma = suma + (2 * k)
      end do
      f83 = suma
   end function
   integer function f84()
      integer :: suma, i
      suma = 0
      do i = 1, 3
         suma = suma + (i ** 3)
      end do
      f84 = suma
   end function
   integer function f85()
      integer :: suma, k
      suma = 0
      do k = 0, 6
         suma = suma + (1)
      end do
      f85 = suma
   end function

   real function f90()
      real :: suma
      integer :: q
      suma = 0
      do q = -3, 5
         suma = suma + ((-1.0)**(q+1.0) * ((q + 2.0)/(q+4.0)))
      end do
      f90 = suma
   end function

   integer function f91()
      integer :: suma, i, j
      suma = 0
      do i = 1, 3
         do j = 1, 4
            suma = suma + (i * j)
         end do
      end do
      f91 = suma 
   end function
end program
