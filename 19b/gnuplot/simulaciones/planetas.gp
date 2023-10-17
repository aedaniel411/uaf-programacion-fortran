set term wxt

do for [i=1:100000:500] {
   splot 'mercurio.txt' every ::1::i w l, 'mercurio.txt' every ::i::i w p,  \
         'venus.txt' every ::1::i w l, 'venus.txt' every ::i::i w p,  \
         'tierra.txt' every ::1::i w l, 'tierra.txt' every ::i::i w p,  \
         'marte.txt' every ::1::i w l, 'marte.txt' every ::i::i w p,  \
         'jupiter.txt' every ::1::i w l, 'jupiter.txt' every ::i::i w p,  \
         'saturno.txt' every ::1::i w l, 'saturno.txt' every ::i::i w p,  \
         'urano.txt' every ::1::i w l, 'urano.txt' every ::i::i w p,  \
         'neptuno.txt' every ::1::i w l, 'neptuno.txt' every ::i::i w p,  \
         'pluton.txt' every ::1::i w l, 'pluton.txt' every ::i::i w p,
}
