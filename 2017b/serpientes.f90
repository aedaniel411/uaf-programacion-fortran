program serpientes
   use aleatorios
   implicit none
   integer :: i, t (25), p1, d1, d2

   call init_random_seed()

   t = 0
   t(3) = 8
   t(6) = 11
   t(9) = 9
   t(10) = 2
   t(14) = -10
   t(19) = -11
   t(24) = -8
   t(22) = -2

   p1 = 0

   do while (p1 <= 25)
      d1 = tirardado()
      d2 = tirardado()
      write (*,*) "tiro de dados", d1 + d2
      p1 = p1 + d1 + d2 
      write (*,*) "p1 se mueve a la casilla ", p1
      if (t(p1) > 0) then
         write (*,*) "escalera"
      end if
      if (t(p1) < 0) then
         write (*,*) "serpiente"
      end if
      p1 = p1 + t(p1)

      do i = 1, 25
         if (p1 == i) then
            write (*,*) i , t(i), "P1"
         else
            write (*,*) i , t(i)
         end if
      end do

      read(*,*)
   end do
stop
contains
   integer function tirardado()
      real :: d
      integer :: d1
      call random_number(d)
      d1 = d * 100
      d1 = mod (d1, 6) + 1
      tirardado = d1
   end function
end program
