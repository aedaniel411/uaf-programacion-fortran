module mfunciones
    implicit none 

    contains
    recursive function nfactorial (n) result(r)
        integer, intent(in) :: n 
        integer :: r

        if ((n == 0 ) .or. (n==1)) then
            r = 1
        else 
            r = n * nfactorial(n - 1)
        end if 
    end function
end module 