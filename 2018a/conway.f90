program conway
   implicit none

   integer :: mg1(0:101,0:101)
   integer :: r, c, nr, nc
   real :: aux

   call init_random_seed()

   write (*,*) "cuantos renglones?"
   !read (*,*) nr
   nr = 17
   write (*,*) "cuantas columnas"
   !read (*,*) nc
   nc = 17

   mg1 = 0

   do r = 1, nr
      do c = 1, nc
         call random_number(aux)
         mg1(r,c) = nint(aux)
      end do
   end do

   do r = 1, nr
      do c = 1, nc
         write (*,'(i3,$)') mg1(r,c)
      end do
      write (*,*)
   end do

stop
contains
   integer function contar_vecinos(mat, x, y)
      integer :: mat(0:101,0:101), x, y
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
