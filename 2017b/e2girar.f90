program e2girar
   implicit none
   integer :: n, g
   write (*,*) "Un numero"
   read (*,*) n
   write (*,*) "digitos a girar "
   read (*,*) g
   write (*,*) girarentero(n, g)
stop
contains
   integer function girarentero(n,g)
    integer :: n, g
    !---Escribe aqui tu solución
    integer :: d, c, r
    c = n
    d = 0
    do while (c > 0)
      c = c / 10
      d = d + 1
    end do
    c = n / 10 **(d - g)
    r = mod (n, 10 **(d - g) )
    r = r * 10 ** g
    girarentero = c + r
   end function
end program
