program gj
   implicit none
   real :: a(100, 200), piv, pcero
   integer :: n, r, c, p

   write (*,*) "cuantos ren?"
   read (*,*) n

   a = 0

   do r = 1, n
      do c = 1, n
         write (*,'(a,i2,a,i2,a,$)') "elemento(",r,",",c,"):"
         read (*,*) a(r,c)
         if (r == c) then
            a (r, c + n) = 1
         end if
      end do
   end do

   write (*,*)
   write (*,*)

   do r = 1, n
      do c = 1, n + n
         write (*,'(f7.2,$)') a(r,c)
      end do
      write (*,*)
   end do

   write (*,*)
   write (*,*)

   do p = 1, n
      piv = a(p,p)
      do c = 1, n + n
         a (p,c) = a (p,c) / piv
      end do
      do r = 1, n
         if (r /= p) then
            pcero = a(r,p)
            do c = 1, n + n
               a (r,c) = a(r,c) - (a(p,c) * pcero)
            end do
         end if
      end do
   end do

   do r = 1, n
      do c = n + 1, n + n
         write (*,'(f7.2,$)') a(r,c)
      end do
      write (*,*)
   end do
end program
