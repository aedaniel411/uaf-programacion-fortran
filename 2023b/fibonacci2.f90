program fibonacci
    implicit none
    integer :: n 

    write (*,*) "numerito de fibonacci?"
    read (*,*) n 
    write (*,*) nfibo(n)

    stop
    contains

    recursive function nfibo(n) result(s)
        integer, intent(in) :: n
        integer :: s 

        if (n == 0) then
            s = 0
        else 
            if (n == 1) then 
                s = 1
            else
                s = nfibo(n-1) + nfibo(n-2)
            end if 
        end if         
    end function
end program 