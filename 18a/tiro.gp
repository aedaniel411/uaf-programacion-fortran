set term wxt

do for [i=1:1000:2] {
   plot 'datos_tiro1.txt' every ::1::i using 2:3 w l, \
        'datos_tiro2.txt' every ::1::i using 2:3 w l
}
