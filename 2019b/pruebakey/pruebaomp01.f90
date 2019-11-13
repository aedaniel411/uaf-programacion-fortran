program pruebaomp
	
	use omp_lib
	
	implicit none
	integer :: pid, np
	integer :: suma, i, li, ls, n
	
	write (*,*) "hola"
	n = 100
	
	!$omp parallel private(pid, i, li, ls, suma)
		suma = 0
		pid = omp_get_thread_num()
		np  = omp_get_max_threads()
		
		li = (n / np) * (pid) + 1
		ls = (n / np) * (pid + 1 )
		
		write (*,*) pid, np, li, ls
	!$omp end parallel
	
end program
