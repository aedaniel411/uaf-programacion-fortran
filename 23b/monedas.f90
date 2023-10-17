program monedas
    implicit none
    integer :: opc

    print *, "comparando:"
    print *, "1,2,3,4 : 5,6,7,8"
    print *, "de que lado de inclina: 1-izq, 2-equilibrio, 3- derecha"
    read (*,*) opc

    if (opc == 2) then 
        print *, "comparando:"
        print *, "1,2,3 : 9,10,11"
        print *, "de que lado de inclina: 1-izq, 2-equilibrio, 3- derecha"
        read (*,*) opc

        if (opc == 2) then
            print *, "comparando:"
            print *, "1 : 12"
            print *, "de que lado de inclina: 1-izq, 3- derecha"
            read (*,*) opc
            if (opc == 1) print *, "falsa -12"
            if (opc == 3) print *, "falsa +12"
        end if
        if (opc == 1) then
            print *, "comparando:"
            print *, "9 : 10"
            print *, "de que lado de inclina: 1-izq, 2-equilibrio, 3- derecha"
            read (*,*) opc
            if (opc == 1) print *, "falsa -10"
            if (opc == 2) print *, "falsa -11"
            if (opc == 3) print *, "falsa -9"
        end if
        if (opc == 3) then
            print *, "comparando:"
            print *, "9 : 10"
            print *, "de que lado de inclina: 1-izq, 2-equilibrio, 3- derecha"
            read (*,*) opc
            if (opc == 1) print *, "falsa +9"
            if (opc == 2) print *, "falsa +11"
            if (opc == 3) print *, "falsa +10"
        end if
    end if
    
    if (opc == 1) then 
        print *, "comparando:"
        print *, "1,2,5,6 : 9,10,11,7"
        print *, "de que lado de inclina: 1-izq, 2-equilibrio, 3- derecha"
        read (*,*) opc

        if (opc == 2) then
            print *, "comparando:"
            print *, "3,8 : 9,10"
            print *, "de que lado de inclina: 1-izq, 2-equilibrio, 3- derecha"
            read (*,*) opc
            if (opc == 1) print *, "falsa +3"
            if (opc == 2) print *, "falsa +4"
            if (opc == 3) print *, "falsa -8"
        end if
        if (opc == 1) then
            print *, "comparando:"
            print *, "2,7 : 9,10"
            print *, "de que lado de inclina: 1-izq, 2-equilibrio, 3- derecha"
            read (*,*) opc
            if (opc == 1) print *, "falsa +2"
            if (opc == 2) print *, "falsa +1"
            if (opc == 3) print *, "falsa -7"
        end if
        if (opc == 3) then
            print *, "comparando:"
            print *, "5 : 9"
            print *, "de que lado de inclina: 2-equilibrio, 3- derecha"
            read (*,*) opc
            if (opc == 2) print *, "falsa -6"
            if (opc == 3) print *, "falsa -5"
        end if
    end if

    if (opc == 3) then 
        print *, "comparando:"
        print *, "1,2,5,6 : 9,10,11,7"
        print *, "de que lado de inclina: 1-izq, 2-equilibrio, 3- derecha"
        read (*,*) opc

        if (opc == 2) then
            print *, "comparando:"
            print *, "3,8 : 9,10"
            print *, "de que lado de inclina: 1-izq, 2-equilibrio, 3- derecha"
            read (*,*) opc
            if (opc == 1) print *, "falsa +8"
            if (opc == 2) print *, "falsa -4"
            if (opc == 3) print *, "falsa -3"
        end if
        if (opc == 3) then
            print *, "comparando:"
            print *, "2,7 : 9,10"
            print *, "de que lado de inclina: 1-izq, 2-equilibrio, 3- derecha"
            read (*,*) opc
            if (opc == 1) print *, "falsa +7"
            if (opc == 2) print *, "falsa -1"
            if (opc == 3) print *, "falsa -2"
        end if
        if (opc == 1) then
            print *, "comparando:"
            print *, "5 : 9"
            print *, "de que lado de inclina: 2-equilibrio"
            read (*,*) opc
            if (opc == 2) print *, "falsa +6"
            if (opc == 1) print *, "falsa +5"
        end if
    end if
    

end program