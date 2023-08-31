program chi
   complex :: x1,x2

   read (*,*) a, b, c

   x1 = ((-b) + (b**2 - 4*a*c)**(0.5)) / (2*a)
   x2 = ((-b) - (b**2.0 - 4.0*a*c)**(1.0/2.0)) / (2.0*a)

   write (*,*) x1, x2
end program 
