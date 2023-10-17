program cuadro01
  implicit none
  integer :: cuadro(7,7), n, x, ren, col

  n = 7
  ren = n / 2 + 1
  col = 1
  do x = 1, n * n
    cuadro(ren,col) = x

    ren = ren - 1
    if (mod(x,n)==0) ren = ren + 1
    if (ren == 0) ren = n

    if (mod(x,n)==0) then
      col = col + 1
    else
      col = col - 1
    end if

    if (col == 0) col = n

  end do

  do ren = 1, n
    do col = 1, n
      write (*,'(i4,$)') cuadro(ren,col)
    end do
    write(*,*)
  end do
end program
