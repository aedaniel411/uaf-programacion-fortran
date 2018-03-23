program leibniz
  implicit none

  call sleibniz
  write (*,*) fleibniz()
  write (*,*) 4 * atan (1.0q0)

stop
contains
  real*16 function fleibniz()
    real*16 :: suma
    integer :: n

    suma = 0
    do n = 0, 10**3
      suma = suma + (((-1.0q0)**n)/(2.0q0*n+1.0q0))
    end do

    fleibniz = suma * 4
  end function
  subroutine sleibniz
    real*16 :: suma
    integer :: n

    suma = 0
    do n = 0, 10**3
      suma = suma + (((-1.0q0)**n)/(2.0q0*n+1.0q0))
    end do

    write (*,*) suma * 4
  end subroutine
end program
