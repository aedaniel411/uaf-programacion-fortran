program pvec
   use mvec
   implicit none

   type (vector) :: a, b, r

   write (*,*) 'magnitud vector a:'
   read (*,*) a%magnitud

   write (*,*) 'direccion vector a:'
   read (*,*) a%direccion
!--- obtener componentes de a
   call compo(a)   

   write (*,*) 'magnitud vector b:'
   read (*,*) b%magnitud

   write (*,*) 'direccion vector b:'
   read (*,*) b%direccion
!--- obtener compo de b
   call compo(b)

   r%cx = a%cx + b%cx
   r%cy = a%cy + b%cy

!--- obtener dir y mag
   call dirymag(r)

   write (*,*) r%cx, r%cy, r%direccion, r%magnitud
	
end program

