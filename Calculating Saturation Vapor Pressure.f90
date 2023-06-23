! Program to calculate saturation vapor pressure for a given set of temperatures using Magnus formula
program saturation_vapor_pressure   !
  
  implicit none  ! Require all variables to be explicitly declared !
  
  integer :: i  ! Declare loop counter variable  !
  real, dimension(10) :: temperature, saturation_pressure  ! Declare temperature and saturation vapor pressure arrays  !
  
  ! Print a header line for the table
  print "('Temperature (k)', 2x , 'Saturation Vapor Pressure (kPa)')"   !
  
  ! Open input file
  open(10, file="data.txt", status="old")  !
  
  ! Loop over each line in the input file, reading in the temperature data
  do i = 1, 10 !
    read(10, *) temperature(i) !2 ! Read temperature value from input file
    
    temperature(i) = temperature(i) + 273.15  ! Convert temperature from Celsius to Kelvin
    
    saturation_pressure(i) = 6.1078 * 10.0 ** ((7.5 * temperature(i)) / (temperature(i) + 273.3) )  ! Calculate saturation vapor pressure using Magnus formula
    
    write(*, "(F6.2, ' K ',5x, F10.4, ' kPa')") temperature(i) , saturation_pressure(i) ! ! Print temperature and saturation vapor pressure for each row in the output table
  end do
  
  ! Close input file
  close(10)!

end program saturation_vapor_pressure !

!24

