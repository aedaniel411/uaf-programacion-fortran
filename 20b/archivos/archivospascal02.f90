program tpascal
    implicit none
    integer :: a(20,0:40), n, r, c 
    character*16 :: archivo

    write (*,*)
    write (*,*) "Nombre del archivo"
    read (*,*) archivo 

    open(unit=19,file=archivo,status="unknown")
    read (19,*) a
    close(19)

    write (*,'(a,$)') "¿cuántos niveles? "
    read (*,*) n 

    
    !- Mostrar en pantalla
    do r = 1, n
        do c = 1, (n*2) -1
            if (a(r,c) == 0) then
                write (*,'(a2,$)') " "
            else
                write (*,'(i2,$)') a(r,c)
            end if
        end do
        write(*,*)
    end do 

    
end program