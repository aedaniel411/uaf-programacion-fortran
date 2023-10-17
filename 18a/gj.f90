program gj
   implicit none
   real :: a(100, 101), piv, pcero
   integer :: n, r, c, p

   write (*,*) "cuantas eq?"
   read (*,*) n

   do r = 1, n
      do c = 1, n + 1
         write (*,'(a,i2,a,i2,a,$)') "elemento(",r,",",c,"):"
         read (*,*) a(r,c)
      end do
   end do

   write (*,*)
   write (*,*)

   do r = 1, n
      do c = 1, n + 1
         write (*,'(f7.2,$)') a(r,c)
      end do
      write (*,*)
   end do

   write (*,*)
   write (*,*)

   do p = 1, n
      piv = a(p,p)
      do c = 1, n + 1
         a (p,c) = a (p,c) / piv
      end do
      do r = 1, n
         if (r /= p) then
            pcero = a(r,p)
            do c = 1, n + 1
               a (r,c) = a(r,c) - (a(p,c) * pcero)
            end do
         end if
      end do
   end do

   do r = 1, n
      do c = 1, n + 1
         write (*,'(f7.2,$)') a(r,c)
      end do
      write (*,*)
   end do
end program
