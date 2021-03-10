% Calculations for 20k Digital potentiometer AD5270
% 1024 position resolution, 
% Set gain of 500, measured gain of ca. 390

% increase in resistance increases voltage

% Set res. value --> obtained voltage
R1 = 10000;
R2 = 16000;
R3 = 11000; % Originally 20k

Rx=20;  % Value potentiometer
Vin=1;
Rbelow =(R3+Rx)*R2/(R3+Rx+R2);
Rtot = Rbelow+R1;

% Voltage to the amplifier: Vin+ to INA (Signal_ref_A)
Vout = Rbelow/Rtot*Vin

% Resolution (min. resistance change) 20 Ohms
step = 20000/1024; % range / steps
% 1 step increases 0.1mV

% Resistance needed for a given voltage
Vdesired = 0.496;
Rbelow2 = -10000*Vdesired/(Vdesired-Vin);
Rneeded = (20000*16000-36000*Rbelow2)/(Rbelow2-16000);

hex2dec('f1ff');
binaryVectorToHex([0 0 0 0 1 1 0 0]);
hexToBinaryVector('23');
dec2hex(12);