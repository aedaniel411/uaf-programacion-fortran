program conway
   implicit none

   integer :: mg1(0:101,0:101), mg2(0:101,0:101)
   integer :: r, c, nr, nc
   real :: aux

   call init_random_seed()

   write (*,*) "cuantos renglones?"
   !read (*,*) nr
   nr = 17
   write (*,*) "cuantas columnas"
   !read (*,*) nc
   nc = 55

   mg1 = 0

   do r = 1, nr
      do c = 1, nc
         call random_number(aux)
         mg1(r,c) = nint(aux)
      end do
   end do
   mg2 = mg1

   do
      call system("clear")
      mg1 = mg2
      do r = 1, nr
         do c = 1, nc
            if (mg1(r,c) == 1) then
               write (*,'(a1,$)') char(219) !"#"
            else
               write (*,'(a1,$)') " "
            end if
         end do
         write (*,*)
      end do
      call system("sleep 1")

      mg2 = 0
      do r = 1, nr
         do c = 1, nc
            mg2(r,c) = reglas (mg1(r,c), sumar_vecinos(mg1,r,c))
         end do
         write (*,*)
      end do

   end do

stop
contains
   integer function sumar_vecinos(mat, y, x)
      integer :: mat(0:101,0:101), x, y
      integer :: suma, r, c

      suma = 0

      r = y - 1
      do c = x - 1, x + 1
         suma = suma + mat(r,c)
      end do

      r = y + 1
      do c = x - 1, x + 1
         suma = suma + mat(r,c)
      end do

      suma = suma + mat(y,x-1) + mat(y,x+1)

      sumar_vecinos = suma
   end function

   integer function reglas(estado,cuenta)
      integer :: estado, cuenta
      integer :: resultado

      resultado = 0

      if ((estado == 0) .and. (cuenta==3)) then
         resultado = 1
      end if

      if ((estado==1).and.((cuenta==2).or.(cuenta==3))) then
         resultado = 1
      end if

      reglas = resultado
   end function

   subroutine init_random_seed()
      use iso_fortran_env, only: int64
      implicit none
      integer, allocatable :: seed(:)
      integer :: i, n, un, istat, dt(8), pid
      integer(int64) :: t

      call random_seed(size = n)
      allocate(seed(n))
      ! First try if the OS provides a random number generator
      open(newunit=un, file="/dev/urandom", access="stream", &
      	form="unformatted", action="read", status="old", iostat=istat)

      if (istat == 0) then
         read(un) seed
         close(un)
      else
         ! Fallback to XOR:ing the current time and pid. The PID is
         ! useful in case one launches multiple instances of the same
         ! program in parallel.
         call system_clock(t)

         if (t == 0) then
            call date_and_time(values=dt)
            t = (dt(1) - 1970) * 365_int64 * 24 * 60 * 60 * 1000 &
               + dt(2) * 31_int64 * 24 * 60 * 60 * 1000 &
               + dt(3) * 24_int64 * 60 * 60 * 1000 &
               + dt(5) * 60 * 60 * 1000 &
               + dt(6) * 60 * 1000 + dt(7) * 1000 &
               + dt(8)
         end if

         pid = getpid()
         t = ieor(t, int(pid, kind(t)))

         do i = 1, n
         	seed(i) = lcg(t)
         end do

      end if

      call random_seed(put=seed)
   end subroutine init_random_seed

   function lcg(s)
      use iso_fortran_env, only: int64
      integer :: lcg
      integer(int64) :: s

      if (s == 0) then
         s = 104729
      else
         s = mod(s, 4294967296_int64)
      end if

      s = mod(s * 279470273_int64, 4294967291_int64)
      lcg = int(mod(s, int(huge(0), int64)), kind(0))
   end function lcg

end program
