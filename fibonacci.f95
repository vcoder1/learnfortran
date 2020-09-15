
      PROGRAM fibonacci_goto

              IMPLICIT NONE
              INTEGER:: x1, x2, x3
              REAL:: phi_est  ! approximate phi 
              INTEGER:: n=3  ! declaration of iterator
              
              x1=1   ! initial condition
              x2=1   ! initial condition
2             x3=x1+x2
              phi_est=x3/(real(x2))  ! approx phi
              PRINT '(2i15 f1.8)', n, x3, phi_est ! print out values
              x1=x2   ! shift variables
              x2=x3   ! shift variables
              n=n+1   ! increment the counter
              IF (n<46) GOTO 2
      END PROGRAM fibonacci_goto
