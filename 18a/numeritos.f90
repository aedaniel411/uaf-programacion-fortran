program numeritos
  implicit none

  integer :: arreglo(10), p, n

  n = 10

  do p = 1, n
    write (*,'(a,$)') "numero: "
    read (*,*) arreglo(p)
  end do

  write (*,*) "numeros: "

  do p = n, 1, -1
    write (*,*) arreglo(p)
  end do

  write (*,*)
  write (*,*) arreglo(1:n)
  write (*,*)
  write (*,*) arreglo(n:1) !--No escribe


end program
