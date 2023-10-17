program lorenz
    implicit none
    
    real :: x1, x2, y1, y2, z1,z2
    real :: a, b, c, t 
    integer :: i, n  

    n = 10**5
    t = 0.001
    write (*,*) t, n 
    a = 10.0
    b = 28.0
    c =  8.0 / 3.0

    x1 = 0.5
    y1 = 0.5
    z1 = 0.5

    open (unit=43, file='datos.txt', status='new')

    do i = 1, n 
        x2 = ( a * (y1 - x1) )     *t+x1 
        y2 = ( x1 * (b - z1) - y1) *t+y1
        z2 = (x1*y1 - c * z1)      *t+z1 
        
        x1 = x2
        y1 = y2
        z1 = z2 

        write (43,'(3f10.6)') x1, y1, z1
    end do 

    close(43)
end program lorenz