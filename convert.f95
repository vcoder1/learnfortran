PROGRAM conversion
IMPLICIT NONE
REAL:: input_m,output_cm
PRINT*, "Type length in m" ! star is used to make sure PRINT is done format free
READ*, input_m
output_cm=100.0*input_m
PRINT*, "Length in cm=", output_cm
END PROGRAM conversion

