% Doppler Velocity Calculation

c = 3*10^8;         % speed of light
f = 77e9;           % frequency in Hz

lambda = c / f;

f_d = [3e3 -4.5e3 11e3 -3e3]; % doppler shifts [Hz]

v_r = f_d * lambda / 2;

disp(v_r);