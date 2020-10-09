# Maple Seed Design and Dynamics
## Design 
- For Design we have used the following functions : 
  - ***find_chord.m*** : This function calculates the Chord length for each segment of the Maple seed at a distance 'R' from the Centre of Mass.
  - ***find_theta.m*** : This function calculates the angle between the chord of each segment and the horizontal i.e. *Angle of Twist*. 
## Dynamics
- For Dynamics we have used the following functions
  - ***find_alpha_cl.m*** : This function calculates the effective angle between the chord of each segment and the horizontal i.e. including the *Angle of Twist* and the *Angle between the Vertical and tangential velocity*. 
  - ***find_surface_area.m*** : This function calculates the effective surface area that provides the Lift.
## To execute
- Dowload and unzip all the MATLAB codes(*.m files*) into the same folder.
- Then run the MATLAB script ***Maple.m*** to generate the plots  
  - *chord length v/s R*
  - *Twist angle v/s R*
  - *Angle of attack v/s R*
  - *Coefficient of Lift v/s R*
  - *acceleration v/s time*
  - *velocity v/s time*
  - *distance v/s time*
  - *Angular velocity v/s time*
- The values of initial velocity and mass can be changed within the MATLAB script ***Maple.m***
