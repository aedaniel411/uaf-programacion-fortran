program lorentz
    implicit none 
    real :: a, b, c
    real :: x, nx, y, ny, z, nz
    real :: dt
    integer :: n, i 

    a = 10.0
    b = 28.0
    c = 8.0 / 3.0

    dt = 0.01
    n = 5000

    x = 1.0
    y = 1.0
    z = 1.0

    open(unit=99, file='lorentz.dat', status='unknown')
    do i = 1, n 
        nx = (a * (y - x)) * dt + x
        ny = (x * (b - z) - y) * dt + y
        nz = (x * y - c * z) * dt + z

        x = nx 
        y = ny
        z = nz

        write (99,*) x, y, z 
    end do 
    close(99)

    open (unit=81, file='grafica.gnuplot', status='unknown')
    write (81,*) "set title 'Atractor de Lorentz'"
    write (81,*) "do for [i=1:",n,":5] {"
    write (81,*) "splot 'lorentz.dat' every ::1::i w l"
    write (81,*) "}"
    write (81,*) "pause mouse close"
    close (81)
    
    do while (.true.)
        call system('gnuplot grafica.gnuplot')
    end do  

end program 