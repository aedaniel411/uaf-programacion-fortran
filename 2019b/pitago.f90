program pitagorica
	implicit none
	
	integer :: ren, col
	
	!write (*,*) "tabla de:"
	!read (*,*) x 
	do ren=1, 10
		do col=1, 10
			write (*,'(i6,$)') ren * col
			!write (*,*) x * col
		end do
		write (*,*)
	end do
		
end program

