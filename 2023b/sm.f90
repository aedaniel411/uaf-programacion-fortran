program sumam
    implicit none 

    real :: a(2,2), b(2,2), suma(2,2)
    integer :: r, c

    a = 0.0
    b = 0.0
    suma = 0.0

    !- datos de matriz a
    write (*,*) "datos de A"
    read (*,*) a
    write (*,*) a 
    !- datos de matriz b
    do r = 1, 2
        do c = 1, 2
            write (*,'(a,i1,a,i1,A,$)') "b[",r,",",c,"]="
            read (*,*) b(r,c)
        end do 
    end do 
    do r = 1, 2
        do c = 1, 2
            write (*,'(f7.2,$)') b(r,c)
        end do 
        write (*,*)
    end do 
    
    !- hacer suma
     do r = 1, 2
        do c = 1, 2
            suma(r,c) = a(r,c) + b(r,c)
        end do 
    end do 
    !- mostrar resultado
    write (*,*)
    do r = 1, 2
        do c = 1, 2
            write (*,'(f7.2,$)') suma(r,c)
        end do 
        write (*,*)
    end do 
    write (*,*) "-------"
    write (*,*) a + b
end program 