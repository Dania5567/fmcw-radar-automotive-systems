
d_res = 1;      % range resolution [m]
R_max = 300;    % max range [m]
c = 3e8;        % speed of light [m/s]
f_b = 0;        % beat frequency [Hz]

% d_res = c/(2*B_sweep);
B_sweep = c/(2*d_res);

% R = (c*T_s*f_b)/(2*B_sweep);
chirp_factor = 5.5;
T_sweep = chirp_factor * 2 * R_max / c;

f_b = [0 1.1e6 13e6 24e6]; % beat frequencies for all four targets
calculated_range = c*T_sweep*f_b/(2*B_sweep); % range calculation

% Display the calculated range
disp(calculated_range);