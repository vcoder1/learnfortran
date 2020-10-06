PROGRAM format_spec
       IMPLICIT NONE
       INTEGER:: i=12345
       REAL*16:: j=5.8938492847
       REAL, DIMENSION (5):: v=(/1.1, 1.2, 1.4, 1.6, 1.9/)

       PRINT '(i5)', i      ! integer with field width of 5
       PRINT '(f10.8)', j   ! real no. each has a width 10 of
                            ! which 8 characters reserved for 
                            ! fractional part
       PRINT '(5f8.3)', v   ! 5 real nos. each of which has width 5.3
       PRINT '(E10.3)', j   ! Exponential no. with width 10.3
       PRINT '(i5 f15.8)', i, j ! BOTH INTEGER AND REAL 

END PROGRAM format_spec