module mvec

   real :: pi = (4.0) * atan (1.0)

   type vector
       real :: magnitud, direccion
       real :: cx, cy
   end type

contains 

   subroutine saludo(s)
	character*32 :: s

	write (*,*) s
   end subroutine

   subroutine compo(v)
      type (vector) :: v

      v%cx = cos (v%direccion) * v%magnitud 
      v%cy = sin (v%direccion) * v%magnitud
   end subroutine

   subroutine dirymag(v)
      type (vector) :: v

      v%direccion = atan2 (v%cy, v%cx)
      v%magnitud = sqrt (v%cy ** 2 + v%cx ** 2)

   end subroutine
end module
