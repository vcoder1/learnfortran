PROGRAM greater_number
        IMPLICIT NONE
        REAL:: x,y
        PRINT*,"ENTER A NUMBER."
        READ*, x
        PRINT*,"ENTER Another NUMBER."
        READ*, y
        IF (x>y) THEN
                PRINT "(f6.0 a f6.0)", x, " is greater than ", y
        ELSE
                PRINT "(f6.0 a f6.0)",y," is greater than ", x
        END IF
        PRINT*, "BYE!"
END PROGRAM greater_number

