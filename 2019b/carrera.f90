program carrera
	implicit none
	integer :: pista (100,25), nivel(25)	
	integer :: p, d
	
	pista = 0
	d = 3
	p = 0
	
	do 	
		p = p + 1
		
		if (mod(p,d) == 0) then
			call nuevonivel (nivel)
		else
			nivel = 0
		end if
		
		call integranivel (pista, nivel)
		call escribemat (pista, 100, 25, 0.1)
	end do
	
stop
contains
	subroutine integranivel (pista, nivel)
		integer, intent (inout) :: pista (100,25), nivel(25)	
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
				if (cri(ren,col)  /= 0) then
					write (*,'(a1,$)') "#"
				else
					write (*,'(a1,$)') " "
				end if
			end do
			write (*,'(a1,$)') "|"
			write (*,*)
		end do
		
		write (a,'(a,f7.4)') "sleep ", tiempo
		call system(a)
	end subroutine
	

                         	
end program
