program cuadropar
  implicit none
  integer :: a(4,4), b(4,4), c(4,4), ren, col, x, ren2
  integer :: sr
  a = 0
  b = 0
  c = 0

  x = 0
  ren2 = 5
  do ren=1, 4
    ren2 = ren2 - 1
    do col=1, 4
      x = x + 1
      if ((ren==col).or.(ren2==col)) a(ren,col) = x
    end do
  end do

  do ren=1, 4
    do col=1, 4
      write (*,'(i4,$)') a(ren,col)
    end do
    write (*,*)
  end do

  x = 17
  ren2 = 5
  do ren=1, 4
    ren2 = ren2 - 1
    do col=1, 4
      x = x - 1
      if (.not.((ren==col).or.(ren2==col))) b(ren,col) = x
    end do
  end do

  write (*,*)
  do ren=1, 4
    do col=1, 4
      write (*,'(i4,$)') b(ren,col)
    end do
    write (*,*)
  end do

  c = a + b
  write (*,*)
  do ren=1, 4
    sr = 0
    do col=1, 4
      write (*,'(i4,$)') c(ren,col)
      sr = sr + c(ren,col)
    end do
    write (*,'(i10,$)') sr 
    write (*,*)
  end do
end program
