program pvectores
  use mvectores
  implicit none

  type (vector) :: a, b, x

  write (*,*) "magnitud del vector A:"
  read (*,*) a%magnitud

  write (*,*) "angulo del vector A:"
  read (*,*) a%angulo 

  write (*,*) "magnitud del vector B:"
  read (*,*) b%magnitud

  write (*,*) "angulo del vector b:"
  read (*,*) b%angulo 
  
  call obtener_ccxy (a)
  call obtener_ccxy (b)

  x%mx = a%mx + b%mx
  x%my = a%my + b%my

  call obtener_ma(x)

  write (*,*) "Resultado ", x%magnitud, x%angulo 

end program
