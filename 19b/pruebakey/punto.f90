program punto
	use mkey
	
	implicit none
	
	integer :: nr, nc
	integer :: pan(25,100), ren, col
	
	nr = 25
	nc = 100
	ren = nr / 2
	col = nc / 2
	
	call sys_keyset(1) !- abrimos conexion
	
	do
		pan = 0
		pan(ren, col) = 1
		call escribemat(pan,nr,nc)
		
		call sys_keyin(key)
		
		if (key == ichar('q') ) exit
		
		if (key == ichar('s') ) ren = ren +1
		if (key == ichar('w') ) ren = ren -1
		if (key == ichar('a') ) col = col -1
		if (key == ichar('d') ) col = col +1
		
	end do
	
	call sys_keyset(0) !- Cerramos conexion
	
stop
contains

	subroutine escribemat(cri,nr, nc)
		integer, intent(in) :: nr, nc
		integer, intent(in) :: cri(nr,nc)
		integer :: ren, col
		
		call system("clear") !- para linux
		!call system("cls") !- para windows
		do ren = 1, nr
			do col = 1, nc
				if (cri(ren,col)  /= 0) then
					write (*,'(a1,$)') "*"
				else
					write (*,'(a1,$)') " "
				end if
			end do
			write (*,*)
		end do
		!call system("sleep 0.3")
	end subroutine
	
end program
