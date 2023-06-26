PROGRAM Pt

!This fortran program calculates the the Potential Temperature 
! of an air parcel at a given Pressure and temperature of the air parcel

IMPLICIT NONE

! Declaring Variables.
Real :: temp(10), pres(10), es(10), lamda(10), T(10), E(10)
REAL, PARAMETER :: boltzman = 5.67E-8, plancks = 6.626E-34, speed_of_light = 3.0E8
INTEGER:: i, pnot

!Assisgning Variables
pnot = 1000

!Create a file data.txt
OPEN(UNIT = 10, FILE='dataa.txt', STATUS='UNKNOWN')

!Write the pressure and temperature values into the data file 
WRITE(10,*) 'Temperature Pressure'
Do i = 1, 10
    temp(i) = 42.0 - 2.0*i
    pres(i) = 975 - 25*i
    WRITE(10, '(F3.1, 1X, F6.2)') temp(i), pres(i)
END DO
!Compute the saturation vapour pressure using the tempereature and pressure data
DO i = 1, 10
    T(i) = temp(i)*(pnot/pres(i))**(0.286)
    
    ! Print the output to the terminal using a suitable formating descriptors
    WRITE'(A46, 1x, F3.1, 1x, A10 ,1x, F6.2, 1x, A2, 1x, F6.2)', 'The Potential Temperature when Pressure is ', pres(i), 'and T is', temp(i), 'is', T(i)
END DO

END PROGRAM Pt
