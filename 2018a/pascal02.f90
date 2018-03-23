program pascal02
  implicit none
  integer :: ren, col, n, matriz(0:100,100)

  do ren = 0, 100
    do col = 1, 100
      matriz(ren,col) = 0
    end do
  end do

  matriz = 0

  write (*,*) "¿cuántos niveles del triangulo?"
  read (*,*) n

  matriz(n,1) = 1

  do col = 2, n
    do ren = 1, n * 2 - 1
      matriz(ren, col) = matriz(ren-1,col-1)+matriz(ren+1,col-1)
    end do
  end do

  do ren=1, n * 2 - 1
    do col=1, n
      if (matriz(ren,col) /= 0) then
        write(*,'(i4,$)') matriz(ren,col)
      else
        write(*,'(a4,$)') " "
      end if
    end do
    write (*,*)
  end do
end program
