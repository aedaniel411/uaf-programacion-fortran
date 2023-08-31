program tabla
	implicit none
	integer :: n, i
	
	write (*,*) "numero: "
	read (*,*) n
	
	do i = 1, 100 
		write (*,'(I3,A,I3,A,I3)') n, 'x', i,'=', n * i
	end do
end program
