% sinusoid_ sound_example.m 
  
% clear variables and figures. 
% really important to do this in general at the start. 
clear all; close all 
  
% calculate the sound signal 
duration = 0.1;                  % [sec] length of time for a signal [sec] 
sample_freq = 40000;             % [Hz] # of sound data points per second. 
  
figure(1); 
subplot(5,1,1); 
  
% Iterate through five frequencies 
for i=1:1:5 
  
    % Choose the plot  
    % Plots arranged as 5 rows, 1 column 
    subplot(5,1,i);     % choose which subplot (i) to draw on. 
     
    % Calculate the sound wave form 
    x = 0 : (1/sample_freq) : duration; % time at which signal changes prop. to sample freq. 
    freq = i*200;                       % [hz] 
    y=sin(2*pi*(x*freq));               % [-1 to 1] y values (sound level) 
  
    % plot the sound signal 
    plot(x,y,'.');              % plot the waveform. 
    axis([0 0.005 -1 1]);       % let's "zoom in" to look at one part. 
    ylabel('Ampl.'); 
    title(['Sinusoid Waveform @ ' num2str(freq) 'Hz']) 
  
    % play the sound signal 
    sound(y,sample_freq);
    % pause briefly to illustrate what 
    % the sound "looks" like to the student. 
    pause(1); 
     
end 
  
% add xlabel to the bottom plot 
xlabel('Time (sec)');