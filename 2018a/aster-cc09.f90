program aster
  implicit none
  integer :: x

  write (*,*) "¿cuántops renglones?"
  read (*,*) x

  call aster09(x)
stop
contains
  subroutine aster03(n)
    integer :: n
    integer :: r, c

    do r = 1, n
      do c = 1, n
        if (mod(r,2) == 0) then
          write (*,'(a,$)') " *"
        else
          write (*,'(a,$)') "* "
        end if
      end do
      write (*,*)
    end do

  end subroutine

  subroutine aster09(n)
    integer :: n
    integer :: r, c

    do r = n -1, 1, -2
      do c = 1, r
        write (*,'(a,$)') " "
      end do
      do c = 1, n - r
        write (*,'(a,$)') "*"
      end do
      write (*,*)
    end do
!---------------------
    do r = 0, n -1, 2
      do c = 1, r
        write (*,'(a,$)') " "
      end do
      do c = 1, n - r
        write (*,'(a,$)') "*"
      end do
      write (*,*)
    end do

  end subroutine
end program
