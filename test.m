addpath('m2kPkg');
m2k = clib.m2kPkg.libm2k.devices.m2kOpen();
ai = m2k.getAnalogIn() % <--- error here
