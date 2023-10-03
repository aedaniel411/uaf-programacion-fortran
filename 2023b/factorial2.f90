program factorial
    use mfunciones 
    
implicit none
    integer :: n 

    write (*,*) "factorial?"
    read (*,*) n 
    write (*,*) nfactorial(n)

end program