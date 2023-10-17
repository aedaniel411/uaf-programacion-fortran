program cuenta
    implicit none
    integer :: n, i
    integer :: a(5)

    !do i = 1, 5
    !    a(i) = i
    !end do 

    a = 0

    do i = 1, 5
        write(*,*) a(i) 
    end do

    do 
        write(*,*) "dame un numero"
        read (*,*) n 

!        select case (n)
 !           case (1)
  !              a1 = a1 + 1
   !         case (2)
    !            a2 = a2 + 1
     !       case (3)
      !          a3 = a3 + 1
       
    !case (4)
     !           a4 = a4 + 1
      !      case (5)
       !         a5 = a5 + 1
       ! end select 
        
        if (n == 0) exit
    end do

    !write (*,*) "1.-", a1
    !write (*,*) "2.-", a2
    !write (*,*) "3.-", a3
    !write (*,*) "4.-", a4
    !write (*,*) "5.-", a5

stop
contains

end program
