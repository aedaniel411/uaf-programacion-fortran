module mvectores		

  type vector
     real :: angulo, magnitud
     real :: mx, my
  end type

contains

  subroutine obtener_ccxy(vec)
    type (vector) :: vec

    !- convertir angulo (grados) del vector a radiane

    vec%mx = vec%magnitud * cos(vec%angulo)
    vec%my = vec%magnitud * sin(vec%angulo)

  end subroutine

  subroutine obtener_ma(vec)
    type (vector) :: vec
    
    vec%angulo = atan2 (vec%my , vec%mx)
    vec%magnitud = sqrt (vec%mx**2 + vec%my**2)

    !- convertir el angulo (radianes) a grados 
  end subroutine

  !- funcion para convertir de radianes a grados

  !- funcion para convertir de grados a radianes

end module
