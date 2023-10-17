module mplanetas
   implicit none

   type planeta
      double precision :: masa, dsol, velorb
      double precision :: x(3), v(3), a(3)
      character(len=12) :: nombre
   end type

contains
   subroutine iniciaval(planetas)
      type (planeta) :: planetas(0:9)
      integer :: p, i

      !-Sol
      planetas(0)%masa = 39.428
      planetas(0)%dsol = 0.0
      planetas(0)%velorb = 0.0
      planetas(0)%nombre = 'sol.txt'

      !-Mercurio
      planetas(1)%masa = 6.547 * 10.0**(-6.0)
      planetas(1)%dsol = 0.387098
      planetas(1)%velorb = 10.0934
      planetas(1)%nombre = 'mercurio.txt'

      !-Venus
      planetas(2)%masa = 9.652 * 10.0**(-5.0)
      planetas(2)%dsol = 0.723332
      planetas(2)%velorb = 7.38415
      planetas(2)%nombre = 'venus.txt'

      !-Tierra
      planetas(3)%masa = 1.185 * 10.0**(-4.0)
      planetas(3)%dsol = 1.0
      planetas(3)%velorb = 6.27978
      planetas(3)%nombre = 'tierra.txt'

      !-Marte
      planetas(4)%masa = 1.272 * 10.0**(-5.0)
      planetas(4)%dsol = 1.523689
      planetas(4)%velorb = 5.08792
      planetas(4)%nombre = 'marte.txt'

      !-Jupiter
      planetas(5)%masa = 3.764 * 10.0**(-2.0)
      planetas(5)%dsol = 5.202758
      planetas(5)%velorb = 2.75311
      planetas(5)%nombre = 'jupiter.txt'

      !-Saturno
      planetas(6)%masa = 1.127 * 10.0**(-2,0)
      planetas(6)%dsol = 9.542824
      planetas(6)%velorb = 2.03257
      planetas(6)%nombre = 'saturno.txt'

      !-Urano
      planetas(7)%masa = 1.721 * 10.0**(-3.0)
      planetas(7)%dsol = 19.19206
      planetas(7)%velorb = 1.43348
      planetas(7)%nombre = 'urano.txt'

      !-Neptuno
      planetas(8)%masa = 2.030 * 10.0**(-3.0)
      planetas(8)%dsol = 30.06893
      planetas(8)%velorb = 1.14525
      planetas(8)%nombre = 'neptuno.txt'

      !-Plutón
      planetas(9)%masa = 2.775 * 10.0**(-7.0)
      planetas(9)%dsol = 39.4817
      planetas(9)%velorb = 0.99945
      planetas(9)%nombre = 'pluton.txt'

      do p = 0, 9
         do i = 1, 3
            planetas(p)%x(i) = 0.0
            planetas(p)%v(i) = 0.0
            planetas(p)%a(i) = 0.0
         end do
         planetas(p)%x(1) = planetas(p)%dsol
         planetas(p)%v(2) = planetas(p)%velorb
      end do

   end subroutine

   subroutine aceleraciones(planetas)
      type (planeta) :: planetas(0:9)
      integer :: i, k
      double precision :: xi, yi, zi, Ms, xk, yk, zk, Mk, Mi
      double precision :: invrp, invrpk

      do i = 1, 9
         planetas(i)%a = 0
      end do

      do i = 1, 9 ! Calcular la aceleracion del planeta i
         xi = planetas(i)%x(1)
         yi = planetas(i)%x(2)
         zi = planetas(i)%x(3)
         invrp = (1.0 /sqrt(xi**2.0 + yi**2.0 + zi**2.0))**3.0
         Mi = planetas(i)%masa

         !- Aceleración del sol sobre el planeta i
         Ms = planetas(0)%masa
         planetas(i)%a(1) = planetas(i)%a(1) - Ms * xi * invrp
         planetas(i)%a(2) = planetas(i)%a(2) - Ms * yi * invrp
         planetas(i)%a(3) = planetas(i)%a(3) - Ms * zi * invrp

         do k = i + 1, 9 !- Aceleracion entre planetas k e i
            xk = planetas(k)%x(1)
            yk = planetas(k)%x(2)
            zk = planetas(k)%x(3)
            invrpk=(1.0/sqrt((xk-xi)**2.0 + (yk-yi)**2.0 + (zk-zi)**2.0))**3.0
            Mk = planetas(k)%masa

            !- Aceleración de planeta k sobre i
            planetas(i)%a(1)=planetas(i)%a(1)-Mk*(xi-xk)*invrpk
            planetas(i)%a(2)=planetas(i)%a(2)-Mk*(yi-yk)*invrpk
            planetas(i)%a(3)=planetas(i)%a(3)-Mk*(zi-zk)*invrpk

            !- Aceleración de planeta i sobre k
            planetas(k)%a(1)=planetas(k)%a(1)-Mi*(xk-xi)*invrpk
            planetas(k)%a(2)=planetas(k)%a(2)-Mi*(yk-yi)*invrpk
            planetas(k)%a(3)=planetas(k)%a(3)-Mi*(zk-zi)*invrpk
         end do
      end do

   end subroutine

   subroutine velocidades(planetas, Dt)
      type (planeta) :: planetas(0:9)
      double precision :: Dt, k1, k2, k3, k4
      integer :: p, i

      do p = 1, 9
         do i = 1, 3
         !   planetas(p)%v(i) = planetas(p)%v(i) + planetas(p)%a(i) * Dt
         k1 = Dt * (planetas(p)%a(i))
         k2 = Dt * (planetas(p)%a(i) + (0.5 * k1))
         k3 = Dt * (planetas(p)%a(i) + (0.5 * k2))
         k4 = Dt * (planetas(p)%a(i) + k3)
         planetas(p)%v(i) = planetas(p)%v(i) + (1.0/6.0)*(k1 + 2*k2 + 2*k3 + k4)
      end do
      end do

   end subroutine

   subroutine posiciones(planetas, Dt)
      type (planeta) :: planetas(0:9)
      double precision :: Dt, k1, k2, k3, k4
      integer :: p, i

      do p = 1, 9
         do i = 1, 3
      !      planetas(p)%x(i) = planetas(p)%x(i) + planetas(p)%v(i) * Dt
            k1 = Dt * (planetas(p)%v(i))
            k2 = Dt * (planetas(p)%v(i) + (0.5 * k1))
            k3 = Dt * (planetas(p)%v(i) + (0.5 * k2))
            k4 = Dt * (planetas(p)%v(i) + k3)
            planetas(p)%x(i) = planetas(p)%x(i) + (1.0/6.0)*(k1 + 2*k2 + 2*k3 + k4)
         end do
      end do

   end subroutine

end module
