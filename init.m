clear


%% Simulation Settings
Tsim = 20.0;   % [s] total simulation time
Ts   = 0.01;   % [s] logging / sample time 

%% Satellite Body Physics (3U CubeSat)
% Physical dimensions
mass_sat   = 3.5;    % [kg] Total mass of the CubeSat
width_sat  = 0.10;   % [m]  Width (X-axis)
depth_sat  = 0.10;   % [m]  Depth (Y-axis)
height_sat = 0.30;   % [m]  Height (Z-axis)

% Moment of Inertia Calculation
% For a uniform box rotating end-over-end (Pitch/Yaw around X or Y axis):
% J = (1/12) * mass * (width^2 + height^2)
J_sat = (1/12) * mass_sat * (width_sat^2 + height_sat^2);  

%% Reaction Wheel Physics (Brass Rotor)
% Physical dimensions
mass_rw   = 0.40;    % [kg] Mass of the internal flywheel rotor
radius_rw = 0.035;   % [m]  Radius of the flywheel disk

% Moment of Inertia Calculation
% For a solid cylinder rotating about its central axis:
% J = (1/2) * mass * radius^2
J_rw = 0.5 * mass_rw * (radius_rw^2);     

b_rw = 0.0;          % [N*m*s/rad] wheel rotational damping (vacuum = 0)




