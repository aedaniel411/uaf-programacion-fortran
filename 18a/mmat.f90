program mmat
  implicit none
  integer :: c(10,10), a(10,10), b(10,10)
  integer :: i,j,r !- variables de cobtrol
  integer :: ra, n, cb !- dimensiones de matrices
  integer :: suma

  write (*,*) "cuantos renglones de A"
  read (*,*) ra

  write (*,*) "cuantas columnas de A y renglones de B"
  read (*,*) n

  write (*,*) "cuantas columnas de B"
  read (*,*) cb

  do i = 1, ra
    do r = 1, n
      write (*,'(a,i3,a,i3,a,$)') "a(",i,",",r,")="
      read (*,*) a(i,r)
    end do
  end do

  write (*,*)
  do r = 1, n
    do j = 1, cb
      write (*,'(a,i3,a,i3,a,$)') "b(",r,",",j,")="
      read (*,*) b(r,j)
    end do
  end do

  do i = 1, ra
    do j = 1, cb
      suma = 0
      do r = 1, n
        suma = suma + (a(i,r) * b(r,j))
      end do
      c(i,j) = suma
    end do
  end do

  write (*,*)
  do i = 1, ra
    do j = 1, cb
      write (*,'(i3,$)') c(i,j)
    end do
    write (*,*)
  end do

end program
