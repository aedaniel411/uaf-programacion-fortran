module mkey
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

end module
