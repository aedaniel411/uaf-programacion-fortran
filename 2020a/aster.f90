program aster
	implicit none 

	integer :: N, ren, col, cizq, cder 
	
	write (*,*) "renglones?"
	read (*,*) N
	
	cizq = N / 2 + 1
	cder = cizq

	do ren= 1, N
	   do col = 1, N
	      if ((col /= cizq).and.(col /= cder)) then	
	         write (*,'(a,$)') " "
              else
	         write (*,'(a,$)') "*"
              end if		
	   end do

	   if (ren <= (N / 2)) then 
	      cizq = cizq - 1
	      cder = cder + 1
           else
	      cizq = cizq + 1
	      cder = cder - 1
           end if 

           write (*,*)
	end do

end program
