
# Maple-Seed-Design-and-Dynamics

Run the Script Maple.m to generate all the Plots and Dynamics Equations for the Autorotating Maple Seed Payload.

The Script Produces:

- Shape of the Maple Seed Payload
- Twist Angle for 3D Modelling
- Angle of Attack of the Propellor
- Lift Coefficient vs the Distance from Center of Mass
- Accelaration wrt time
- Descent Velocity wrt time
- Displacement wrt time
- Angular Velocity wrt time

## Design 
- For Design we have used the following functions : 
  - ***find_chord.m*** : This function calculates the Chord length for each segment of the Maple seed at a distance 'R' from the Centre of Mass.
  - ***find_theta.m*** : This function calculates the angle between the chord of each segment and the horizontal i.e. *Angle of Twist*. 
## Dynamics
- For Dynamics we have used the following functions
  - ***find_alpha_cl.m*** : This function calculates the effective angle between the chord of each segment and the horizontal i.e. including the *Angle of Twist* and the *Angle between the Vertical and tangential velocity*. 
  - ***find_surface_area.m*** : This function calculates the effective surface area that provides the Lift.
  - ***Maple.m*** : This script contains the equations to calculate Lift, Drag, distance, velocity, acceleration, angular velocity and angular acceleration using the above functions.
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
