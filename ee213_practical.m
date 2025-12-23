clear; clc; close all; 

load TuM.mat
% RC Circuit

figure; hold on; grid on;
plot(t, v_in)
plot(t, v_c)
plot(t, v_r)
title("This is it")
xlabel('Time (s)')
ylabel('Voltage (V)')
legend('v_{in}', 'v_C', 'v_R')

%% 

clear; clc; close all; 

load TuA.mat
% RL Circuit

v_in = v_r + v_l;
t = 1000 * t;

figure; hold on; grid on;
plot(t, v_in)
plot(t, v_r)
plot(t, v_l)
title("This is it")
xlabel('Time (ms)')
ylabel('Voltage (V)')
legend('v_{in}', 'v_R', 'v_L')

%% 

clear; clc; close all; 

load WM.mat 
% Capacitance Calculator Circuit

figure; hold on; grid on;
plot(-CH1_data, 1e6 * CH2_data / (350 / (120 * 0.28 * 1e-3)))
title("This is it")
xlabel('Voltage (V)')
ylabel('Charge (muF)')

%% 

clear; clc; close all; 

load WA.mat 
% Inductor Calculator Circuit

figure; hold on; grid on;
plot(-CH1_data / 100 * 1e3, (CH2_data-5) * (1e5 * 1e-8))
% plot(v_R_t, v_2_t) 
title("This is it")
xlabel('Current (mA)')
ylabel('Flux (Wb)')

figure; hold on; grid on;
plot(Time_s, CH1_data)
plot(Time_s, CH2_data)

%% 

clear; clc; close all; 

load ThA.mat
% Full Wave Rectifier

figure; hold on; grid on;
plot(Time_s, 0.5 * CH1_data - CH2_data)
title("This is it")
xlabel('Time (s)')
ylabel('Voltage (V)')

%% 

clear; clc; close all; 

load MM.mat
% Negative Resistance Converter

figure; hold on; grid on;
plot(0.5 * (CH1_data + CH2_data), 0.5 * (CH1_data - CH2_data))
title("This is it")
xlabel('v_{in} (V)')
ylabel('v_o (V)')

%% 

clear; clc; close all; 

load MA.mat 

figure; hold on; grid on;
plot(Time_s, CH1_data + 2)
plot(Time_s, 10 * CH2_data - 2)
title("This is it")
xlabel('Time (s)')
ylabel('Voltage (V)')
legend('v_{in}', 'v_{o}')