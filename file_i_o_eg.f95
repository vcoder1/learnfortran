
      PROGRAM output_file
              IMPLICIT NONE
              INTEGER :: u=7, ios ! the name ios doesn't matter..what 
                                  ! matters is that, it will be changed 
                                  ! by the function open after execution
                                  ! of open :- 0 if all's right..nonzero
                                  ! otherwise.
              REAL :: j=5.8938492847
              REAL, DIMENSION(5):: v=(/1.1, 1.2, 1.4, 1.6, 1.9/)
              PRINT*,"BY THE WAY, ios=", ios ! check now.. ios will have
                                             ! garbage value in it
              ! ampersand sign does line continuation
              OPEN(UNIT=u, IOSTAT=ios, FILE='myfile.txt', STATUS='new',&
                   ACTION='write')
              PRINT*,"BY THE WAY, ios=", ios ! and now it's (probably) 0

              IF(ios.eq.0) THEN              ! if everything is fine..
                      WRITE(u,'(5f5.1)') v
                      CLOSE(u)
              ELSE                           ! else..
                      PRINT '(a30)', "Error: file not open"
              END IF
      END PROGRAM output_file

