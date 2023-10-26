 set title 'Atractor de Lorentz'
 do for [i=1:        5000 :5] {
 splot 'lorentz.dat' every ::1::i w l
 }
 pause mouse close
