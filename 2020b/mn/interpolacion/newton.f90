program newton
    implicit none

    integer :: i, j, k, n
    real :: x(100) = 0.0, y(100,100) = 0.0, suma, multi, xx


    open (unit=23, file='valores.txt', status='old')
    write (*,*) 'Cuantos valores? '
    read (23,*) n

    do i = 1, n
        write (*,*) "dame el par ",i, "de valores: " 
        read (23,*) x(i), y(i,1)
    end do 

    close (23)
    
    write (*,*)
    write (*,*)

    do i = 1, n
        write (*,'(2F12.4)') x(i), y(i,1)
    end do

    !- Calculo de la tabla completa
    do k = 1, n -1
        do j= 1, n -k
            i = j+1
            y(j,k+1) = (y(i,k)-y(j,k)) / (x(j+k) - x(j))
        end do 
    end do 

    write (*,*)
    write (*,*)
    do i = 1, n
        write (*,'(F12.4, $)') x(i) 
        do j = 1, n+ 1- i
            write (*,'(F12.4, $)') y(i,j)
        end do 
        write (*,*)
    end do
    
    xx=2.0
    suma = 0.0
    do i = 1, n - 1
        
        multi = 1.0
        do j = 1, i-1 
            multi = multi * (xx - x(j))
        end do 

        suma = suma + (y(1,i) * multi)
    end do 

    write (*,*) "valor para ", xx,  " es ", suma    

end program 