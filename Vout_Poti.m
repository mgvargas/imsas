% Calculations for 20k Digital potentiometer AD5270
% 1024 position resolution

% Set res. value --> obtained voltage

Rx=6000;  % Value potentiometer
Vin=1;
Rbelow =(20000+Rx)*16000/(20000+Rx+16000);
Rtot = Rbelow+10000;

% Voltage to the amplifier: Vin+ to INA (Signal_ref_A)
Vout = Rbelow/Rtot*Vin

% Resolution (min. resistance change) 20 Ohms
step = 20000/1024; % range / steps
% 1 step increases 0.1mV

hex2dec('f1ff');
binaryVectorToHex([0 0 0 0 1 1 0 0]);
hexToBinaryVector('23');
dec2hex(12);