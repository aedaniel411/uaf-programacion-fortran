program psolar
   use mplanetas
   implicit none

   type (planeta) :: p(0:9)
   integer :: N, i
   double precision :: Dt

   call iniciaval(p)

   N = 50000
   Dt = 0.001

   do i = 1, N
      write (*,*) p(4)%x
      call aceleraciones(p)
      call velocidades(p, Dt)
      call posiciones(p, Dt)
   end do

end program
