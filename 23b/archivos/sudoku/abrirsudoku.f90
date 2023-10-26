program abrirsudoku
    use modsdk
    implicit none 
    integer :: i, j, p, scuad, sren, scol, x
    integer :: a(9,9), s(9,9,9)
    !character*12 :: archivo 

   ! write (*,*) "archivo?"
    !read (*,*) archivo

    open (unit=90, file='sudoku01.sdk', status='old')
    read (90,*) a 
    close(90)

    write(*,*)
    write(*,*) "__________________________"
    write(*,*)

    do i = 1, 9
        do j = 1, 9
            if (a(i,j) /= 0) then  
                write (*,'(i3,$)') a(i,j)
            else
                write (*,'(a3,$)') " "
            end if 
        end do
        write (*,*)
    end do 
!----------
do x = 1, 10
!-- solucion
    s = -1

    do i = 1, 9
        do j = 1, 9
            if (a(i,j) > 0 ) then 
                call filacero (s,a(i,j),i,j)
                call columnacero (s,a(i,j),i,j)
                call cuadrantecero (s,a(i,j),i,j)
		call paginascero (s,a(i,j),i,j)
                s(a(i,j), i, j) = 1
            end if 
        end do 
    end do 
    
    write(*,*)
    write(*,*) "__________________________"
    write(*,*)
      
    do p = 1, 9
       do i=1, 9
          do j = 1, 9
             if (s(p,i,j) == (-1)) then 
                 scuad = sumacuad(s,p,i,j)
                 sren  = sumafila(s,p,i,j)
                 scol  = sumacol(s,p,i,j)
                 if ((scuad == -1) .or. (sren == -1) .or. (scol==-1)) then
                    a(i,j) = p
                 end if
             end if  
          end do 
       end do
    end do 
   
    do i = 1, 9
        do j = 1, 9
            if (a(i,j) /= 0) then  
                write (*,'(i3,$)') a(i,j)
            else
                write (*,'(a3,$)') " "
            end if 
        end do
        write (*,*) 
    end do
end do
    
    stop
    contains
    subroutine filacero(s, p, i, j)
        integer, intent(in) :: p,i,j 
        integer, intent(inout) :: s(9,9,9)
        s(p,i,:) = 0
    end subroutine
    subroutine columnacero(s, p, i, j)
        integer, intent(in) :: p,i,j 
        integer, intent(inout) :: s(9,9,9)
        s(p,:,j) = 0
    end subroutine
    subroutine cuadrantecero(s, p, i, j)
        integer, intent(in) :: p,i,j 
        integer, intent(inout) :: s(9,9,9)
        integer :: ci,cs, fi,fs
        
        fi = limi(i)
        fs = lims(i)
        ci = limi(j)
        cs = lims(j)

        s(p, fi:fs, ci:cs) = 0
    end subroutine
    subroutine paginascero(s, p, i, j)
        integer, intent(in) :: p,i,j 
        integer, intent(inout) :: s(9,9,9)
        s(:,i,j) = 0
    end subroutine 
end program 
