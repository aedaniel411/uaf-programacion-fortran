set term wxt

do for [i=1:100000:25] {
    splot 'datos.txt' every ::1::i with lines
}
pause(10)