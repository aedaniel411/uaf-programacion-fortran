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

    open(unit=99, file='gatitos.dat', status='new')
    do while (t <= tmax)
        y = v0 * sin(d) * t - 0.5* g*t**2
        x = v0 * cos(d) * t 
        write (99,*) t, x, y
        t = t + (tmax / p)
    end do 
    close(99)

end program