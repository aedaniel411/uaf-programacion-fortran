program pruebakey

	use, intrinsic :: iso_c_binding
	
	implicit none
	integer :: key
	
	interface
		
		subroutine sys_keyset(mode) bind(c)
			import :: c_int
			integer (kind=c_int) :: mode
		end subroutine
		
		subroutine sys_keyin(nextch) bind(c)
			import :: c_int
			integer (kind=c_int) :: nextch
		end subroutine
		
	end interface

	call sys_keyset(1) !- abrimos conexion
	
	do
		call sys_keyin(key)
		write (*,*) 'teclazoo : ', key
		
		if (key == ichar('q') ) exit
		 
	end do
	
	call sys_keyset(0) !- Cerramos conexion
end program



