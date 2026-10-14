
% Data_points
Ns = 1000;

% Generate random noise
s=randn(Ns,1);


s([100 ,200, 300, 700])=[8 9 4 11];

%plot the output
plot(s);


% 1b. Guard Cells 
T = 15; 
G = 1; % number of guard cells


offset = 15;

% Vector to hold threshold values 
threshold_CFAR = [];

%Vector to hold final signal after thresholding
signal_CFAR = [];

% 2. Slide window across the signal length
for i = 1:(Ns-(G+T))     
    noise_level = sum(s(i:i+T-1));
    noise_threshold = (noise_level / T) * offset;
    threshold_CFAR = [threshold_CFAR, {noise_threshold}];
    
    % 6. Measuring the signal within the CUT
    signal = s(T+G+i);

    % 8. Filter the signal above the threshold
    
    % Compare the measured signal to the noise threshold
    % and set signal to zero if its below the noise threshold
    if (signal < noise_threshold)
        signal = 0;
    end
    signal_CFAR = [signal_CFAR, {signal}];
end

% plot the filtered signal
plot (cell2mat(signal_CFAR),'g--');

% plot original sig, threshold and filtered signal within the same figure.
figure,plot(s);
hold on,plot(cell2mat(circshift(threshold_CFAR,G)),'r--','LineWidth',2)
hold on, plot (cell2mat(circshift(signal_CFAR,(T+G))),'g--','LineWidth',4);
legend('Signal','CFAR Threshold','detection')