program divide
	implicit none
	integer :: c, ori, i, r,s
	
	write (*,*) "numero"
	read (*,*) c
	ori = c
	
	!write (*,*) c, " tiene ", ndigitos(c), " digitos"
	
	s = 0
	do i = ndigitos(ori), 1, -1 
		r = mod (c, 10)
		c = c / 10
		s = s + (r * 10**(i-1))
	end do
	
	write (*,*) s, ori

	if (ori == s) then
		write (*,*) "es palindromo"
	else
		write (*,*) "no es palindromo"
	end if
	stop
	contains
	
	integer function ndigitos(n)
		integer, intent (in) ::n
		integer :: c, i
		c = n
		i = 0
		do
			c = c / 10
			i = i + 1
			if (c == 0) exit
		end do
		
		ndigitos = i
	end function
end program
