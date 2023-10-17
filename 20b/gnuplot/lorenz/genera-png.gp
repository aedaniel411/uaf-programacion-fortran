set term jpeg
set output 'lorenz.jpg'

splot 'datos.txt' with lines
