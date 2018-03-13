program fibo01
  implicit none
  integer :: n, i

  write (*,*) "¿cuantos?"
  read (*,*) n

  do i = n, 1, -1
    write (*,*) nfibo(i)
  end do
  
stop
contains
  integer function nfibo(x)
    integer :: x
    integer :: a, b, c, i
    c = 0
    b = 1
    do i = 1, x
      a = b + c
      c = b
      b = a
    end do
    nfibo = c
  end function
  subroutine fibo(x)
    integer :: x
    integer :: a, b, c, i
    c = 0
    b = 1
    do i = 1, x
      write (*,*) b
      a = b + c
      c = b
      b = a
    end do
  end subroutine
end program
