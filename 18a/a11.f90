program a11
   implicit none
   integer :: n, r, c, p, q

   write (*,'(a,$)') "cuantos renglones? "
   read (*,*) n

   p = n / 2 + 1
   q = p
   do r = 1, n
      do c = 1, n
         if ((c==p).or.(c==q)) then
            write (*,'(a,$)') "*"
         else
            write (*,'(a,$)') " "
         end if
      end do
      write (*,*)
      p = p - 1
      if (p == 0) p = n - 1
      q = q + 1
      if (q > n) q = 2
   end do

end program
