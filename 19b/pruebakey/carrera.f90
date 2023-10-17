program carrera
	use mkey
	use omp_lib

	implicit none
	integer :: pista (100,25), nivel(25)
	integer :: p, d, col
	integer :: pid

	pista = 0
	d = 3
	p = 0
	col = 13

	!$omp parallel
		pid = omp_get_thread_num()
		call sys_keyset(1) !- abrimos conexion
		do
			!if (pid == 0) then
				!-- master

				call sys_keyin(key)

				if (key == ichar('q') ) exit
				if (key == ichar('a') ) col = col -1
				if (key == ichar('d') ) col = col +1
				if (col > 25) col = 25
				if (col < 1) col = 1
			!end if

			!if (pid == 1) then
				!- slave
				p = p + 1

				if (mod(p,d) == 0) then
					call nuevonivel (nivel)
				else
					nivel = 0
				!	pista(90, col) = 10
				end if

				!-- Le hablamos a la grua?
				if (pista(90, col) == 0) then
					pista(90, col) = 10
				else
					write (*,*) "Game Over"
					write (*,*)
					write (*,*) "Nivel ", p
					exit
				end if

				call integranivel (pista, nivel, col)
				call escribemat (pista, 100, 25, 0.1)
			!end if
		end do
		call sys_keyset(0) !- cerramos conexion
	!$omp end parallel
stop
contains
	subroutine integranivel (pista, nivel, col)
		integer, intent (inout) :: pista (100,25), nivel(25), col
		integer :: i

		do i=100, 2, -1
			pista(i,:) = pista(i-1,:)
		end do

		pista(1,:) = nivel
	end subroutine

	subroutine nuevonivel(nivel)
		integer, intent(out) :: nivel(25)
		integer :: i
		real :: x

		do i = 1, 25
			call random_number(x)
			nivel(i) = nint(x)
		end do
	end subroutine


	subroutine escribemat(cri,nr, nc, tiempo)
		integer, intent(in) :: cri(100,25), nr, nc
		integer :: ren, col
		real :: tiempo
		character (20) :: a

		call system("clear") !- para linux
		!call system("cls") !- para windows
		do ren = 1, nr
			write (*,'(a1,$)') "|"
			do col = 1, nc

				select case(cri(ren,col))
					case (0)
						write (*,'(a1,$)') " "
					case (1)
						write (*,'(a1,$)') "#"
					case (10)
						write (*,'(a1,$)') "A"
				end select

			end do
			write (*,'(a1,$)') "|"
			write (*,*)
		end do

		write (a,'(a,f7.4)') "sleep ", tiempo
		call system(a)
	end subroutine



end program
