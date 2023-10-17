program psolar
   use mplanetas
   implicit none

   type (planeta) :: p(0:9)
   integer :: N, i, pp, u, l
   double precision :: Dt, sumak, sumap, sumap2, vtotal, xtotal, xtotal2, etot


   do pp = 1, 9
      call iniciaval(p)

      u = 10+pp
      open (unit=u, file=trim(p(pp)%nombre), status='unknown')
      write (*,*) trim(p(pp)%nombre)
      N = 50000
      Dt = 0.001

      do i = 1, N
         write (u,*) p(pp)%x
         call aceleraciones(p)
         call velocidades(p, Dt)
         call posiciones(p, Dt)
      end do

      close(u)
   end do


   u = 20
   open (unit=u, file="energia.txt", status='unknown')
   write (*,*) "energia.txt"
   call iniciaval(p)

   N = 100000
   Dt = 0.001

   etot = 0.0
   do i = 1, N
      sumak = 0.0
      sumap = 0.0

      call aceleraciones(p)
      call velocidades(p, Dt)
      call posiciones(p, Dt)

      do pp = 1, 9
         vtotal = (p(pp)%v(1)**2 + p(pp)%v(2)**2 + p(pp)%v(3)**2) **(1.0/2.0)
         sumak = sumak + (0.5)*p(pp)%masa*vtotal**2

         xtotal = (p(pp)%x(1)**2 + p(pp)%x(2)**2 + p(pp)%x(3)**2) **(1.0/2.0)

         sumap2 = 0.0
         do l = 1, 9
            if (l/=pp) then
               xtotal2 = (p(l)%x(1)**2 + p(l)%x(2)**2 + p(l)%x(3)**2) **(1.0/2.0)
               sumap2 = sumap2 + (p(l)%masa * p(pp)%masa / abs(xtotal2 - xtotal))
            end if
         end do

         sumap = sumap + ( p(pp)%masa / abs(xtotal) )
         etot = sumap - (p(0)%masa * sumap + (0.5) * sumap2)
      end do

      write (u,*) i, sumak, etot, sumak + etot

   end do
   close(u)
end program
