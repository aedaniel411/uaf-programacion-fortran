program cpd09
   implicit none
   integer :: r, c, n, e, a

   write (*,*) "cuantos renglones?"
   read (*,*) n
   e = n + 1
   a = 1

   r = 0
   do
      r = r + 1

      e = e - 2
      c = 0
      do
         c = c + 1
         if (c <= e) write (*,'(a,$)') "."
         if (c >= e) exit
      end do

      c = 0
      do
         c = c + 1
         write (*,'(a,$)') "*"
         if (c >= a) exit
      end do
      a = a + 2

      write (*,*)
      if (r >= (n / 2 + 1)) exit
   end do

   a = n - 2
   do
      r = r - 1

      e = e + 2
      c = 0
      do
         c = c + 1
         write (*,'(a,$)') "."
         if (c >= e) exit
      end do

      c = 0
      do
         c = c + 1
         write (*,'(a,$)') "*"
         if (c >= a) exit
      end do
      a = a - 2

      write (*,*)
      if (r <= 1) exit
   end do

end program
