program parabolico
    use mimate
    implicit none

    real :: d, v0, t, tmax, y, x, p

    write (*,'(A,$)') "dirección (grados): "
    read (*,*) d 
    d = g2r(d)

    write (*,'(A,$)') "velocidad inicial:"
    read (*,*) v0 
    
    write (*,'(A,$)') "cuantos puntos?"
    read (*,*) p 
    
    p = 100
    t = 0.0
    tmax = 2.0 * v0 * sin(d) / g

    open(unit=99, file='gatitos.dat', status='unknown')
    do while (t < tmax)
        t = t + (tmax / p)
        y = v0 * sin(d) * t - 0.5* g*t**2
        x = v0 * cos(d) * t 
        write (99,*) t, x, y
    end do 
    close(99)

    open (unit=81, file='grafica.gnuplot', status='unknown')
    write (81,*) "set title 'tiro parabolico"
    write (81,*) "plot 'gatitos.dat' using 2:3 "
    write (81,*) "pause mouse close"
    close (81)
    
    call system('gnuplot grafica.gnuplot') 
    

end program