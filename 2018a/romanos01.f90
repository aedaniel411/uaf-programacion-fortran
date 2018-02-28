program romanos
	implicit none
	
	integer :: x, d, u, c
	
	write (*,*) "numero a convertir a numero romano:"
	read (*,*) x
	
	c = x / 100
	x = mod(x,100)
	
	u = mod(x,10)
	d = x / 10

	if (c == 1) write (*,*) "c"
	if (c == 2) write (*,*) "cc"
	if (c == 3) write (*,*) "ccc"
	if (c == 4) write (*,*) "cd"
	if (c == 5) write (*,'(A,$)') "d"
	if (c == 6) write (*,*) "dc"
	if (c == 7) write (*,*) "dcc"
	if (c == 8) write (*,*) "dccc"
	if (c == 9) write (*,*) "cm"
	if (c == 10) write (*,*) "m"
	

	if (d == 1) write (*,*) "x"
	if (d == 2) write (*,*) "xx"
	if (d == 3) write (*,*) "xxx"
	if (d == 4) write (*,*) "xl"
	if (d == 5) write (*,'(A,$)') "l"
	if (d == 6) write (*,*) "lx"
	if (d == 7) write (*,*) "lxx"
	if (d == 8) write (*,*) "lxxx"
	if (d == 9) write (*,*) "xc"
	if (d == 10) write (*,*) "c"
	
	if (u == 1) write (*,*) "i"
	if (u == 2) write (*,*) "ii"
	if (u == 3) write (*,*) "iii"
	if (u == 4) write (*,*) "iv"
	if (u == 5) write (*,*) "v"
	if (u == 6) write (*,*) "vi"
	if (u == 7) write (*,*) "vii"
	if (u == 8) write (*,*) "viii"
	if (u == 9) write (*,*) "ix"
	if (u == 10) write (*,*) "x"
	
end program
