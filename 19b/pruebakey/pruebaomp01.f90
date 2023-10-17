program pruebaomp
	
	use omp_lib
	
	implicit none
	integer :: pid, np
	integer :: suma, i, li, ls, n, total(100)
	
	write (*,*) "hola"
	n = 100
	total = 0
	
	!$omp parallel private(pid, i, li, ls, suma) 
		pid = omp_get_thread_num()
		np  = omp_get_max_threads()
		
		li = (n / np) * (pid) + 1
		ls = (n / np) * (pid + 1 )
		
		suma = 0
		do i = li, ls
			suma = suma + i
		end do
		
		total(pid + 1) = suma
		
		write (*,*) pid, np, li, ls, suma
	!$omp end parallel
	
	write (*,*) "total : ", sum(total)
end program
