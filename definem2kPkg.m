%% About definem2kPkg.mlx
% This file defines the MATLAB interface to the library |m2kPkg|.
%
% Commented sections represent C++ functionality that MATLAB cannot automatically define. To include
% functionality, uncomment a section and provide values for &lt;SHAPE&gt;, &lt;DIRECTION&gt;, etc. For more
% information, see <matlab:helpview(fullfile(docroot,'matlab','helptargets.map'),'cpp_define_interface') Define MATLAB Interface for C++ Library>.



%% Setup. Do not edit this section.
function libDef = definem2kPkg()
libDef = clibgen.LibraryDefinition("m2kPkgData.xml");
%% OutputFolder and Libraries 
libDef.OutputFolder = "/tmp/libm2k-matlab";
libDef.Libraries = "./libm2k.so";

%% C++ enumeration |DeviceTypes| with MATLAB name |clib.m2kPkg.DeviceTypes| 
addEnumeration(libDef, "DeviceTypes", "int32",...
    [...
      "DevFMCOMMS",...  % 0
      "DevM2K",...  % 1
      "Other",...  % 2
    ],...
    "MATLABName", "clib.m2kPkg.DeviceTypes", ...
    "Description", "clib.m2kPkg.DeviceTypes    Representation of C++ enumeration DeviceTypes"); % This description is shown as help to user. Modify it to appropriate description.

%% C++ class |libm2k::M2kCalibration| with MATLAB name |clib.m2kPkg.libm2k.M2kCalibration| 
M2kCalibrationDefinition = addClass(libDef, "libm2k::M2kCalibration", "MATLABName", "clib.m2kPkg.libm2k.M2kCalibration", ...
    "Description", "clib.m2kPkg.libm2k.M2kCalibration    Representation of C++ class libm2k::M2kCalibration"); % This description is shown as help to user. Modify it to appropriate description.

%% C++ class |libm2k::analog::M2kAnalogIn| with MATLAB name |clib.m2kPkg.libm2k.analog.M2kAnalogIn| 
M2kAnalogInDefinition = addClass(libDef, "libm2k::analog::M2kAnalogIn", "MATLABName", "clib.m2kPkg.libm2k.analog.M2kAnalogIn", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn    Representation of C++ class libm2k::analog::M2kAnalogIn"); % This description is shown as help to user. Modify it to appropriate description.

%% C++ class method |init| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: void libm2k::analog::M2kAnalogIn::init()
initDefinition = addMethod(M2kAnalogInDefinition, ...
    "void libm2k::analog::M2kAnalogIn::init()", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.init    Method of C++ class libm2k::analog::M2kAnalogIn::init"); % This description is shown as help to user. Modify it to appropriate description.
validate(initDefinition);

%% C++ class method |processSample| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::processSample(int16_t sample,unsigned int channel)
processSampleDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::processSample(int16_t sample,unsigned int channel)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.processSample    Method of C++ class libm2k::analog::M2kAnalogIn::processSample"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(processSampleDefinition, "sample", "int16");
defineArgument(processSampleDefinition, "channel", "uint32");
defineOutput(processSampleDefinition, "RetVal", "double");
validate(processSampleDefinition);

%% C++ class method |getVoltageRaw| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: short libm2k::analog::M2kAnalogIn::getVoltageRaw(unsigned int ch)
getVoltageRawDefinition = addMethod(M2kAnalogInDefinition, ...
    "short libm2k::analog::M2kAnalogIn::getVoltageRaw(unsigned int ch)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getVoltageRaw    Method of C++ class libm2k::analog::M2kAnalogIn::getVoltageRaw"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(getVoltageRawDefinition, "ch", "uint32");
defineOutput(getVoltageRawDefinition, "RetVal", "int16");
validate(getVoltageRawDefinition);

%% C++ class method |getVoltage| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::getVoltage(unsigned int ch)
getVoltageDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::getVoltage(unsigned int ch)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getVoltage    Method of C++ class libm2k::analog::M2kAnalogIn::getVoltage"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(getVoltageDefinition, "ch", "uint32");
defineOutput(getVoltageDefinition, "RetVal", "double");
validate(getVoltageDefinition);

%% C++ class method |getOversamplingRatio| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::getOversamplingRatio()
getOversamplingRatioDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::getOversamplingRatio()", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getOversamplingRatio    Method of C++ class libm2k::analog::M2kAnalogIn::getOversamplingRatio"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(getOversamplingRatioDefinition, "RetVal", "double");
validate(getOversamplingRatioDefinition);

%% C++ class method |getOversamplingRatio| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::getOversamplingRatio(unsigned int input1)
getOversamplingRatioDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::getOversamplingRatio(unsigned int input1)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getOversamplingRatio    Method of C++ class libm2k::analog::M2kAnalogIn::getOversamplingRatio"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(getOversamplingRatioDefinition, "input1", "uint32");
defineOutput(getOversamplingRatioDefinition, "RetVal", "double");
validate(getOversamplingRatioDefinition);

%% C++ class method |setOversamplingRatio| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::setOversamplingRatio(double oversampling)
setOversamplingRatioDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::setOversamplingRatio(double oversampling)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.setOversamplingRatio    Method of C++ class libm2k::analog::M2kAnalogIn::setOversamplingRatio"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(setOversamplingRatioDefinition, "oversampling", "double");
defineOutput(setOversamplingRatioDefinition, "RetVal", "double");
validate(setOversamplingRatioDefinition);

%% C++ class method |setOversamplingRatio| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::setOversamplingRatio(unsigned int chn_idx,double oversampling)
setOversamplingRatioDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::setOversamplingRatio(unsigned int chn_idx,double oversampling)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.setOversamplingRatio    Method of C++ class libm2k::analog::M2kAnalogIn::setOversamplingRatio"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(setOversamplingRatioDefinition, "chn_idx", "uint32");
defineArgument(setOversamplingRatioDefinition, "oversampling", "double");
defineOutput(setOversamplingRatioDefinition, "RetVal", "double");
validate(setOversamplingRatioDefinition);

%% C++ class method |getSampleRate| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::getSampleRate()
getSampleRateDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::getSampleRate()", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getSampleRate    Method of C++ class libm2k::analog::M2kAnalogIn::getSampleRate"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(getSampleRateDefinition, "RetVal", "double");
validate(getSampleRateDefinition);

%% C++ class method |getSampleRate| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::getSampleRate(unsigned int input1)
getSampleRateDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::getSampleRate(unsigned int input1)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getSampleRate    Method of C++ class libm2k::analog::M2kAnalogIn::getSampleRate"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(getSampleRateDefinition, "input1", "uint32");
defineOutput(getSampleRateDefinition, "RetVal", "double");
validate(getSampleRateDefinition);

%% C++ class method |setSampleRate| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::setSampleRate(double samplerate)
setSampleRateDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::setSampleRate(double samplerate)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.setSampleRate    Method of C++ class libm2k::analog::M2kAnalogIn::setSampleRate"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(setSampleRateDefinition, "samplerate", "double");
defineOutput(setSampleRateDefinition, "RetVal", "double");
validate(setSampleRateDefinition);

%% C++ class method |setSampleRate| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::setSampleRate(unsigned int chn_idx,double samplerate)
setSampleRateDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::setSampleRate(unsigned int chn_idx,double samplerate)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.setSampleRate    Method of C++ class libm2k::analog::M2kAnalogIn::setSampleRate"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(setSampleRateDefinition, "chn_idx", "uint32");
defineArgument(setSampleRateDefinition, "samplerate", "double");
defineOutput(setSampleRateDefinition, "RetVal", "double");
validate(setSampleRateDefinition);

%% C++ class method |getLevelRaw| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: int libm2k::analog::M2kAnalogIn::getLevelRaw(unsigned int chnIdx) const
getLevelRawDefinition = addMethod(M2kAnalogInDefinition, ...
    "int libm2k::analog::M2kAnalogIn::getLevelRaw(unsigned int chnIdx) const", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getLevelRaw    Method of C++ class libm2k::analog::M2kAnalogIn::getLevelRaw"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(getLevelRawDefinition, "chnIdx", "uint32");
defineOutput(getLevelRawDefinition, "RetVal", "int32");
validate(getLevelRawDefinition);

%% C++ class method |setLevelRaw| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: void libm2k::analog::M2kAnalogIn::setLevelRaw(unsigned int chnIdx,int level)
setLevelRawDefinition = addMethod(M2kAnalogInDefinition, ...
    "void libm2k::analog::M2kAnalogIn::setLevelRaw(unsigned int chnIdx,int level)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.setLevelRaw    Method of C++ class libm2k::analog::M2kAnalogIn::setLevelRaw"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(setLevelRawDefinition, "chnIdx", "uint32");
defineArgument(setLevelRawDefinition, "level", "int32");
validate(setLevelRawDefinition);

%% C++ class method |getLevel| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::getLevel(unsigned int chnIdx) const
getLevelDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::getLevel(unsigned int chnIdx) const", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getLevel    Method of C++ class libm2k::analog::M2kAnalogIn::getLevel"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(getLevelDefinition, "chnIdx", "uint32");
defineOutput(getLevelDefinition, "RetVal", "double");
validate(getLevelDefinition);

%% C++ class method |setLevel| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: void libm2k::analog::M2kAnalogIn::setLevel(unsigned int chnIdx,double v_level)
setLevelDefinition = addMethod(M2kAnalogInDefinition, ...
    "void libm2k::analog::M2kAnalogIn::setLevel(unsigned int chnIdx,double v_level)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.setLevel    Method of C++ class libm2k::analog::M2kAnalogIn::setLevel"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(setLevelDefinition, "chnIdx", "uint32");
defineArgument(setLevelDefinition, "v_level", "double");
validate(setLevelDefinition);

%% C++ class method |setCalibscale| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::setCalibscale(unsigned int index,double calibscale)
setCalibscaleDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::setCalibscale(unsigned int index,double calibscale)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.setCalibscale    Method of C++ class libm2k::analog::M2kAnalogIn::setCalibscale"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(setCalibscaleDefinition, "index", "uint32");
defineArgument(setCalibscaleDefinition, "calibscale", "double");
defineOutput(setCalibscaleDefinition, "RetVal", "double");
validate(setCalibscaleDefinition);

%% C++ class method |getCalibscale| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::getCalibscale(unsigned int index)
getCalibscaleDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::getCalibscale(unsigned int index)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getCalibscale    Method of C++ class libm2k::analog::M2kAnalogIn::getCalibscale"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(getCalibscaleDefinition, "index", "uint32");
defineOutput(getCalibscaleDefinition, "RetVal", "double");
validate(getCalibscaleDefinition);

%% C++ class method |getDelay| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: int libm2k::analog::M2kAnalogIn::getDelay()
getDelayDefinition = addMethod(M2kAnalogInDefinition, ...
    "int libm2k::analog::M2kAnalogIn::getDelay()", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getDelay    Method of C++ class libm2k::analog::M2kAnalogIn::getDelay"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(getDelayDefinition, "RetVal", "int32");
validate(getDelayDefinition);

%% C++ class method |setDelay| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: void libm2k::analog::M2kAnalogIn::setDelay(int delay)
setDelayDefinition = addMethod(M2kAnalogInDefinition, ...
    "void libm2k::analog::M2kAnalogIn::setDelay(int delay)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.setDelay    Method of C++ class libm2k::analog::M2kAnalogIn::setDelay"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(setDelayDefinition, "delay", "int32");
validate(setDelayDefinition);

%% C++ class method |getFilterCompensation| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::getFilterCompensation(double samplerate)
getFilterCompensationDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::getFilterCompensation(double samplerate)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getFilterCompensation    Method of C++ class libm2k::analog::M2kAnalogIn::getFilterCompensation"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(getFilterCompensationDefinition, "samplerate", "double");
defineOutput(getFilterCompensationDefinition, "RetVal", "double");
validate(getFilterCompensationDefinition);

%% C++ class method |convertRawToVolts| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: double libm2k::analog::M2kAnalogIn::convertRawToVolts(int sample,double correctionGain,double hw_gain,double filterCompensation,double offset)
convertRawToVoltsDefinition = addMethod(M2kAnalogInDefinition, ...
    "double libm2k::analog::M2kAnalogIn::convertRawToVolts(int sample,double correctionGain,double hw_gain,double filterCompensation,double offset)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.convertRawToVolts    Method of C++ class libm2k::analog::M2kAnalogIn::convertRawToVolts"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(convertRawToVoltsDefinition, "sample", "int32");
defineArgument(convertRawToVoltsDefinition, "correctionGain", "double");
defineArgument(convertRawToVoltsDefinition, "hw_gain", "double");
defineArgument(convertRawToVoltsDefinition, "filterCompensation", "double");
defineArgument(convertRawToVoltsDefinition, "offset", "double");
defineOutput(convertRawToVoltsDefinition, "RetVal", "double");
validate(convertRawToVoltsDefinition);

%% C++ class method |convertVoltsToRaw| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: int libm2k::analog::M2kAnalogIn::convertVoltsToRaw(double voltage,double correctionGain,double hw_gain,double filterCompensation,double offset)
convertVoltsToRawDefinition = addMethod(M2kAnalogInDefinition, ...
    "int libm2k::analog::M2kAnalogIn::convertVoltsToRaw(double voltage,double correctionGain,double hw_gain,double filterCompensation,double offset)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.convertVoltsToRaw    Method of C++ class libm2k::analog::M2kAnalogIn::convertVoltsToRaw"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(convertVoltsToRawDefinition, "voltage", "double");
defineArgument(convertVoltsToRawDefinition, "correctionGain", "double");
defineArgument(convertVoltsToRawDefinition, "hw_gain", "double");
defineArgument(convertVoltsToRawDefinition, "filterCompensation", "double");
defineArgument(convertVoltsToRawDefinition, "offset", "double");
defineOutput(convertVoltsToRawDefinition, "RetVal", "int32");
validate(convertVoltsToRawDefinition);

%% C++ class method |setStreamingFlag| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: void libm2k::analog::M2kAnalogIn::setStreamingFlag(bool input1)
setStreamingFlagDefinition = addMethod(M2kAnalogInDefinition, ...
    "void libm2k::analog::M2kAnalogIn::setStreamingFlag(bool input1)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.setStreamingFlag    Method of C++ class libm2k::analog::M2kAnalogIn::setStreamingFlag"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(setStreamingFlagDefinition, "input1", "logical");
validate(setStreamingFlagDefinition);

%% C++ class method |getStreamingFlag| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: bool libm2k::analog::M2kAnalogIn::getStreamingFlag()
getStreamingFlagDefinition = addMethod(M2kAnalogInDefinition, ...
    "bool libm2k::analog::M2kAnalogIn::getStreamingFlag()", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getStreamingFlag    Method of C++ class libm2k::analog::M2kAnalogIn::getStreamingFlag"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(getStreamingFlagDefinition, "RetVal", "logical");
validate(getStreamingFlagDefinition);

%% C++ class method |getNbChannels| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: unsigned int libm2k::analog::M2kAnalogIn::getNbChannels()
getNbChannelsDefinition = addMethod(M2kAnalogInDefinition, ...
    "unsigned int libm2k::analog::M2kAnalogIn::getNbChannels()", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getNbChannels    Method of C++ class libm2k::analog::M2kAnalogIn::getNbChannels"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(getNbChannelsDefinition, "RetVal", "uint32");
validate(getNbChannelsDefinition);

%% C++ class method |getName| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: std::string libm2k::analog::M2kAnalogIn::getName()
getNameDefinition = addMethod(M2kAnalogInDefinition, ...
    "std::string libm2k::analog::M2kAnalogIn::getName()", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.getName    Method of C++ class libm2k::analog::M2kAnalogIn::getName"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(getNameDefinition, "RetVal", "string");
validate(getNameDefinition);

%% C++ class method |enableChannel| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: void libm2k::analog::M2kAnalogIn::enableChannel(unsigned int chnIdx,bool enable)
enableChannelDefinition = addMethod(M2kAnalogInDefinition, ...
    "void libm2k::analog::M2kAnalogIn::enableChannel(unsigned int chnIdx,bool enable)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.enableChannel    Method of C++ class libm2k::analog::M2kAnalogIn::enableChannel"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(enableChannelDefinition, "chnIdx", "uint32");
defineArgument(enableChannelDefinition, "enable", "logical");
validate(enableChannelDefinition);

%% C++ class method |isChannelEnabled| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: bool libm2k::analog::M2kAnalogIn::isChannelEnabled(unsigned int chnIdx)
isChannelEnabledDefinition = addMethod(M2kAnalogInDefinition, ...
    "bool libm2k::analog::M2kAnalogIn::isChannelEnabled(unsigned int chnIdx)", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.isChannelEnabled    Method of C++ class libm2k::analog::M2kAnalogIn::isChannelEnabled"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(isChannelEnabledDefinition, "chnIdx", "uint32");
defineOutput(isChannelEnabledDefinition, "RetVal", "logical");
validate(isChannelEnabledDefinition);

%% C++ class method |convertChannelHostFormat| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: void libm2k::analog::M2kAnalogIn::convertChannelHostFormat(unsigned int chn_idx,int16_t * avg,int16_t * src)
%convertChannelHostFormatDefinition = addMethod(M2kAnalogInDefinition, ...
%    "void libm2k::analog::M2kAnalogIn::convertChannelHostFormat(unsigned int chn_idx,int16_t * avg,int16_t * src)", ...
%    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.convertChannelHostFormat    Method of C++ class libm2k::analog::M2kAnalogIn::convertChannelHostFormat"); % This description is shown as help to user. Modify it to appropriate description.
%defineArgument(convertChannelHostFormatDefinition, "chn_idx", "uint32");
%defineArgument(convertChannelHostFormatDefinition, "avg", "int16", <DIRECTION>, <SHAPE>);
%defineArgument(convertChannelHostFormatDefinition, "src", "int16", <DIRECTION>, <SHAPE>);
%validate(convertChannelHostFormatDefinition);

%% C++ class method |convertChannelHostFormat| for C++ class |libm2k::analog::M2kAnalogIn| 
% C++ Signature: void libm2k::analog::M2kAnalogIn::convertChannelHostFormat(unsigned int chn_idx,double * avg,int16_t * src)
%convertChannelHostFormatDefinition = addMethod(M2kAnalogInDefinition, ...
%    "void libm2k::analog::M2kAnalogIn::convertChannelHostFormat(unsigned int chn_idx,double * avg,int16_t * src)", ...
%    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogIn.convertChannelHostFormat    Method of C++ class libm2k::analog::M2kAnalogIn::convertChannelHostFormat"); % This description is shown as help to user. Modify it to appropriate description.
%defineArgument(convertChannelHostFormatDefinition, "chn_idx", "uint32");
%defineArgument(convertChannelHostFormatDefinition, "avg", "double", <DIRECTION>, <SHAPE>);
%defineArgument(convertChannelHostFormatDefinition, "src", "int16", <DIRECTION>, <SHAPE>);
%validate(convertChannelHostFormatDefinition);

%% C++ class |libm2k::analog::M2kAnalogOut| with MATLAB name |clib.m2kPkg.libm2k.analog.M2kAnalogOut| 
M2kAnalogOutDefinition = addClass(libDef, "libm2k::analog::M2kAnalogOut", "MATLABName", "clib.m2kPkg.libm2k.analog.M2kAnalogOut", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kAnalogOut    Representation of C++ class libm2k::analog::M2kAnalogOut"); % This description is shown as help to user. Modify it to appropriate description.

%% C++ class |libm2k::analog::M2kPowerSupply| with MATLAB name |clib.m2kPkg.libm2k.analog.M2kPowerSupply| 
M2kPowerSupplyDefinition = addClass(libDef, "libm2k::analog::M2kPowerSupply", "MATLABName", "clib.m2kPkg.libm2k.analog.M2kPowerSupply", ...
    "Description", "clib.m2kPkg.libm2k.analog.M2kPowerSupply    Representation of C++ class libm2k::analog::M2kPowerSupply"); % This description is shown as help to user. Modify it to appropriate description.

%% C++ class |libm2k::digital::M2kDigital| with MATLAB name |clib.m2kPkg.libm2k.digital.M2kDigital| 
M2kDigitalDefinition = addClass(libDef, "libm2k::digital::M2kDigital", "MATLABName", "clib.m2kPkg.libm2k.digital.M2kDigital", ...
    "Description", "clib.m2kPkg.libm2k.digital.M2kDigital    Representation of C++ class libm2k::digital::M2kDigital"); % This description is shown as help to user. Modify it to appropriate description.

%% C++ class |libm2k::devices::M2k| with MATLAB name |clib.m2kPkg.libm2k.devices.M2k| 
M2kDefinition = addClass(libDef, "libm2k::devices::M2k", "MATLABName", "clib.m2kPkg.libm2k.devices.M2k", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k    Representation of C++ class libm2k::devices::M2k"); % This description is shown as help to user. Modify it to appropriate description.

%% C++ class method |init| for C++ class |libm2k::devices::M2k| 
% C++ Signature: void libm2k::devices::M2k::init()
initDefinition = addMethod(M2kDefinition, ...
    "void libm2k::devices::M2k::init()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.init    Method of C++ class libm2k::devices::M2k::init"); % This description is shown as help to user. Modify it to appropriate description.
validate(initDefinition);

%% C++ class method |scanAllAnalogIn| for C++ class |libm2k::devices::M2k| 
% C++ Signature: void libm2k::devices::M2k::scanAllAnalogIn()
scanAllAnalogInDefinition = addMethod(M2kDefinition, ...
    "void libm2k::devices::M2k::scanAllAnalogIn()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.scanAllAnalogIn    Method of C++ class libm2k::devices::M2k::scanAllAnalogIn"); % This description is shown as help to user. Modify it to appropriate description.
validate(scanAllAnalogInDefinition);

%% C++ class method |scanAllAnalogOut| for C++ class |libm2k::devices::M2k| 
% C++ Signature: void libm2k::devices::M2k::scanAllAnalogOut()
scanAllAnalogOutDefinition = addMethod(M2kDefinition, ...
    "void libm2k::devices::M2k::scanAllAnalogOut()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.scanAllAnalogOut    Method of C++ class libm2k::devices::M2k::scanAllAnalogOut"); % This description is shown as help to user. Modify it to appropriate description.
validate(scanAllAnalogOutDefinition);

%% C++ class method |scanAllPowerSupply| for C++ class |libm2k::devices::M2k| 
% C++ Signature: void libm2k::devices::M2k::scanAllPowerSupply()
scanAllPowerSupplyDefinition = addMethod(M2kDefinition, ...
    "void libm2k::devices::M2k::scanAllPowerSupply()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.scanAllPowerSupply    Method of C++ class libm2k::devices::M2k::scanAllPowerSupply"); % This description is shown as help to user. Modify it to appropriate description.
validate(scanAllPowerSupplyDefinition);

%% C++ class method |scanAllDigital| for C++ class |libm2k::devices::M2k| 
% C++ Signature: void libm2k::devices::M2k::scanAllDigital()
scanAllDigitalDefinition = addMethod(M2kDefinition, ...
    "void libm2k::devices::M2k::scanAllDigital()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.scanAllDigital    Method of C++ class libm2k::devices::M2k::scanAllDigital"); % This description is shown as help to user. Modify it to appropriate description.
validate(scanAllDigitalDefinition);

%% C++ class method |calibrate| for C++ class |libm2k::devices::M2k| 
% C++ Signature: void libm2k::devices::M2k::calibrate()
calibrateDefinition = addMethod(M2kDefinition, ...
    "void libm2k::devices::M2k::calibrate()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.calibrate    Method of C++ class libm2k::devices::M2k::calibrate"); % This description is shown as help to user. Modify it to appropriate description.
validate(calibrateDefinition);

%% C++ class method |calibrateADC| for C++ class |libm2k::devices::M2k| 
% C++ Signature: bool libm2k::devices::M2k::calibrateADC()
calibrateADCDefinition = addMethod(M2kDefinition, ...
    "bool libm2k::devices::M2k::calibrateADC()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.calibrateADC    Method of C++ class libm2k::devices::M2k::calibrateADC"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(calibrateADCDefinition, "RetVal", "logical");
validate(calibrateADCDefinition);

%% C++ class method |calibrateDAC| for C++ class |libm2k::devices::M2k| 
% C++ Signature: bool libm2k::devices::M2k::calibrateDAC()
calibrateDACDefinition = addMethod(M2kDefinition, ...
    "bool libm2k::devices::M2k::calibrateDAC()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.calibrateDAC    Method of C++ class libm2k::devices::M2k::calibrateDAC"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(calibrateDACDefinition, "RetVal", "logical");
validate(calibrateDACDefinition);

%% C++ class method |resetCalibration| for C++ class |libm2k::devices::M2k| 
% C++ Signature: bool libm2k::devices::M2k::resetCalibration()
resetCalibrationDefinition = addMethod(M2kDefinition, ...
    "bool libm2k::devices::M2k::resetCalibration()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.resetCalibration    Method of C++ class libm2k::devices::M2k::resetCalibration"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(resetCalibrationDefinition, "RetVal", "logical");
validate(resetCalibrationDefinition);

%% C++ class method |getDigital| for C++ class |libm2k::devices::M2k| 
% C++ Signature: libm2k::digital::M2kDigital * libm2k::devices::M2k::getDigital()
%getDigitalDefinition = addMethod(M2kDefinition, ...
%    "libm2k::digital::M2kDigital * libm2k::devices::M2k::getDigital()", ...
%    "Description", "clib.m2kPkg.libm2k.devices.M2k.getDigital    Method of C++ class libm2k::devices::M2k::getDigital"); % This description is shown as help to user. Modify it to appropriate description.
%defineOutput(getDigitalDefinition, "RetVal", "clib.m2kPkg.libm2k.digital.M2kDigital", <SHAPE>);
%validate(getDigitalDefinition);

%% C++ class method |getPowerSupply| for C++ class |libm2k::devices::M2k| 
% C++ Signature: libm2k::analog::M2kPowerSupply * libm2k::devices::M2k::getPowerSupply()
%getPowerSupplyDefinition = addMethod(M2kDefinition, ...
%    "libm2k::analog::M2kPowerSupply * libm2k::devices::M2k::getPowerSupply()", ...
%    "Description", "clib.m2kPkg.libm2k.devices.M2k.getPowerSupply    Method of C++ class libm2k::devices::M2k::getPowerSupply"); % This description is shown as help to user. Modify it to appropriate description.
%defineOutput(getPowerSupplyDefinition, "RetVal", "clib.m2kPkg.libm2k.analog.M2kPowerSupply", <SHAPE>);
%validate(getPowerSupplyDefinition);

%% C++ class method |getAnalogIn| for C++ class |libm2k::devices::M2k| 
% C++ Signature: libm2k::analog::M2kAnalogIn * libm2k::devices::M2k::getAnalogIn()
%getAnalogInDefinition = addMethod(M2kDefinition, ...
%    "libm2k::analog::M2kAnalogIn * libm2k::devices::M2k::getAnalogIn()", ...
%    "Description", "clib.m2kPkg.libm2k.devices.M2k.getAnalogIn    Method of C++ class libm2k::devices::M2k::getAnalogIn"); % This description is shown as help to user. Modify it to appropriate description.
%defineOutput(getAnalogInDefinition, "RetVal", "clib.m2kPkg.libm2k.analog.M2kAnalogIn", <SHAPE>);
%validate(getAnalogInDefinition);

%% C++ class method |getAnalogIn| for C++ class |libm2k::devices::M2k| 
% C++ Signature: libm2k::analog::M2kAnalogIn * libm2k::devices::M2k::getAnalogIn(std::string input1)
%getAnalogInDefinition = addMethod(M2kDefinition, ...
%    "libm2k::analog::M2kAnalogIn * libm2k::devices::M2k::getAnalogIn(std::string input1)", ...
%    "Description", "clib.m2kPkg.libm2k.devices.M2k.getAnalogIn    Method of C++ class libm2k::devices::M2k::getAnalogIn"); % This description is shown as help to user. Modify it to appropriate description.
%defineArgument(getAnalogInDefinition, "input1", "string");
%defineOutput(getAnalogInDefinition, "RetVal", "clib.m2kPkg.libm2k.analog.M2kAnalogIn", <SHAPE>);
%validate(getAnalogInDefinition);

%% C++ class method |getAnalogOut| for C++ class |libm2k::devices::M2k| 
% C++ Signature: libm2k::analog::M2kAnalogOut * libm2k::devices::M2k::getAnalogOut()
%getAnalogOutDefinition = addMethod(M2kDefinition, ...
%    "libm2k::analog::M2kAnalogOut * libm2k::devices::M2k::getAnalogOut()", ...
%    "Description", "clib.m2kPkg.libm2k.devices.M2k.getAnalogOut    Method of C++ class libm2k::devices::M2k::getAnalogOut"); % This description is shown as help to user. Modify it to appropriate description.
%defineOutput(getAnalogOutDefinition, "RetVal", "clib.m2kPkg.libm2k.analog.M2kAnalogOut", <SHAPE>);
%validate(getAnalogOutDefinition);

%% C++ class method |getDacBCalibrationOffset| for C++ class |libm2k::devices::M2k| 
% C++ Signature: int libm2k::devices::M2k::getDacBCalibrationOffset()
getDacBCalibrationOffsetDefinition = addMethod(M2kDefinition, ...
    "int libm2k::devices::M2k::getDacBCalibrationOffset()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.getDacBCalibrationOffset    Method of C++ class libm2k::devices::M2k::getDacBCalibrationOffset"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(getDacBCalibrationOffsetDefinition, "RetVal", "int32");
validate(getDacBCalibrationOffsetDefinition);

%% C++ class method |getDacACalibrationOffset| for C++ class |libm2k::devices::M2k| 
% C++ Signature: int libm2k::devices::M2k::getDacACalibrationOffset()
getDacACalibrationOffsetDefinition = addMethod(M2kDefinition, ...
    "int libm2k::devices::M2k::getDacACalibrationOffset()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.getDacACalibrationOffset    Method of C++ class libm2k::devices::M2k::getDacACalibrationOffset"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(getDacACalibrationOffsetDefinition, "RetVal", "int32");
validate(getDacACalibrationOffsetDefinition);

%% C++ class method |getDacBCalibrationGain| for C++ class |libm2k::devices::M2k| 
% C++ Signature: double libm2k::devices::M2k::getDacBCalibrationGain()
getDacBCalibrationGainDefinition = addMethod(M2kDefinition, ...
    "double libm2k::devices::M2k::getDacBCalibrationGain()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.getDacBCalibrationGain    Method of C++ class libm2k::devices::M2k::getDacBCalibrationGain"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(getDacBCalibrationGainDefinition, "RetVal", "double");
validate(getDacBCalibrationGainDefinition);

%% C++ class method |getDacACalibrationGain| for C++ class |libm2k::devices::M2k| 
% C++ Signature: double libm2k::devices::M2k::getDacACalibrationGain()
getDacACalibrationGainDefinition = addMethod(M2kDefinition, ...
    "double libm2k::devices::M2k::getDacACalibrationGain()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.getDacACalibrationGain    Method of C++ class libm2k::devices::M2k::getDacACalibrationGain"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(getDacACalibrationGainDefinition, "RetVal", "double");
validate(getDacACalibrationGainDefinition);

%% C++ class method |getAdcCalibrationOffset| for C++ class |libm2k::devices::M2k| 
% C++ Signature: int libm2k::devices::M2k::getAdcCalibrationOffset(unsigned int chn)
getAdcCalibrationOffsetDefinition = addMethod(M2kDefinition, ...
    "int libm2k::devices::M2k::getAdcCalibrationOffset(unsigned int chn)", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.getAdcCalibrationOffset    Method of C++ class libm2k::devices::M2k::getAdcCalibrationOffset"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(getAdcCalibrationOffsetDefinition, "chn", "uint32");
defineOutput(getAdcCalibrationOffsetDefinition, "RetVal", "int32");
validate(getAdcCalibrationOffsetDefinition);

%% C++ class method |getAdcCalibrationGain| for C++ class |libm2k::devices::M2k| 
% C++ Signature: double libm2k::devices::M2k::getAdcCalibrationGain(unsigned int chn)
getAdcCalibrationGainDefinition = addMethod(M2kDefinition, ...
    "double libm2k::devices::M2k::getAdcCalibrationGain(unsigned int chn)", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.getAdcCalibrationGain    Method of C++ class libm2k::devices::M2k::getAdcCalibrationGain"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(getAdcCalibrationGainDefinition, "chn", "uint32");
defineOutput(getAdcCalibrationGainDefinition, "RetVal", "double");
validate(getAdcCalibrationGainDefinition);

%% C++ class method |setTimeout| for C++ class |libm2k::devices::M2k| 
% C++ Signature: void libm2k::devices::M2k::setTimeout(unsigned int timeout)
setTimeoutDefinition = addMethod(M2kDefinition, ...
    "void libm2k::devices::M2k::setTimeout(unsigned int timeout)", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.setTimeout    Method of C++ class libm2k::devices::M2k::setTimeout"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(setTimeoutDefinition, "timeout", "uint32");
validate(setTimeoutDefinition);

%% C++ class method |setLed| for C++ class |libm2k::devices::M2k| 
% C++ Signature: void libm2k::devices::M2k::setLed(bool on)
setLedDefinition = addMethod(M2kDefinition, ...
    "void libm2k::devices::M2k::setLed(bool on)", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.setLed    Method of C++ class libm2k::devices::M2k::setLed"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(setLedDefinition, "on", "logical");
validate(setLedDefinition);

%% C++ class method |getLed| for C++ class |libm2k::devices::M2k| 
% C++ Signature: bool libm2k::devices::M2k::getLed()
getLedDefinition = addMethod(M2kDefinition, ...
    "bool libm2k::devices::M2k::getLed()", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k.getLed    Method of C++ class libm2k::devices::M2k::getLed"); % This description is shown as help to user. Modify it to appropriate description.
defineOutput(getLedDefinition, "RetVal", "logical");
validate(getLedDefinition);

%% C++ class constructor for C++ class |libm2k::devices::M2k| 
% C++ Signature: libm2k::devices::M2k::M2k(libm2k::devices::M2k const & input1)
M2kConstructor1Definition = addConstructor(M2kDefinition, ...
    "libm2k::devices::M2k::M2k(libm2k::devices::M2k const & input1)", ...
    "Description", "clib.m2kPkg.libm2k.devices.M2k    Constructor of C++ class libm2k::devices::M2k"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(M2kConstructor1Definition, "input1", "clib.m2kPkg.libm2k.devices.M2k", "input");
validate(M2kConstructor1Definition);

%% C++ class |libm2k::devices::ContextBuilder| with MATLAB name |clib.m2kPkg.libm2k.devices.ContextBuilder| 
ContextBuilderDefinition = addClass(libDef, "libm2k::devices::ContextBuilder", "MATLABName", "clib.m2kPkg.libm2k.devices.ContextBuilder", ...
    "Description", "clib.m2kPkg.libm2k.devices.ContextBuilder    Representation of C++ class libm2k::devices::ContextBuilder"); % This description is shown as help to user. Modify it to appropriate description.

%% C++ class constructor for C++ class |libm2k::devices::ContextBuilder| 
% C++ Signature: libm2k::devices::ContextBuilder::ContextBuilder()
ContextBuilderConstructor1Definition = addConstructor(ContextBuilderDefinition, ...
    "libm2k::devices::ContextBuilder::ContextBuilder()", ...
    "Description", "clib.m2kPkg.libm2k.devices.ContextBuilder    Constructor of C++ class libm2k::devices::ContextBuilder"); % This description is shown as help to user. Modify it to appropriate description.
validate(ContextBuilderConstructor1Definition);

%% C++ class method |m2kOpen| for C++ class |libm2k::devices::ContextBuilder| 
% C++ Signature: libm2k::devices::M2k * libm2k::devices::ContextBuilder::m2kOpen(char const * input1)
%m2kOpenDefinition = addMethod(ContextBuilderDefinition, ...
%    "libm2k::devices::M2k * libm2k::devices::ContextBuilder::m2kOpen(char const * input1)", ...
%    "Description", "clib.m2kPkg.libm2k.devices.ContextBuilder.m2kOpen    Method of C++ class libm2k::devices::ContextBuilder::m2kOpen"); % This description is shown as help to user. Modify it to appropriate description.
%defineArgument(m2kOpenDefinition, "input1", <MLTYPE>, "input", <SHAPE>); % '<MLTYPE>' can be int8,string, or char
%defineOutput(m2kOpenDefinition, "RetVal", "clib.m2kPkg.libm2k.devices.M2k", <SHAPE>);
%validate(m2kOpenDefinition);

%% C++ class method |m2kOpen| for C++ class |libm2k::devices::ContextBuilder| 
% C++ Signature: libm2k::devices::M2k * libm2k::devices::ContextBuilder::m2kOpen()
%m2kOpenDefinition = addMethod(ContextBuilderDefinition, ...
%    "libm2k::devices::M2k * libm2k::devices::ContextBuilder::m2kOpen()", ...
%    "Description", "clib.m2kPkg.libm2k.devices.ContextBuilder.m2kOpen    Method of C++ class libm2k::devices::ContextBuilder::m2kOpen"); % This description is shown as help to user. Modify it to appropriate description.
%defineOutput(m2kOpenDefinition, "RetVal", "clib.m2kPkg.libm2k.devices.M2k", <SHAPE>);
%validate(m2kOpenDefinition);

%% C++ class method |deviceCloseAll| for C++ class |libm2k::devices::ContextBuilder| 
% C++ Signature: void libm2k::devices::ContextBuilder::deviceCloseAll()
deviceCloseAllDefinition = addMethod(ContextBuilderDefinition, ...
    "void libm2k::devices::ContextBuilder::deviceCloseAll()", ...
    "Description", "clib.m2kPkg.libm2k.devices.ContextBuilder.deviceCloseAll    Method of C++ class libm2k::devices::ContextBuilder::deviceCloseAll"); % This description is shown as help to user. Modify it to appropriate description.
validate(deviceCloseAllDefinition);

%% C++ class constructor for C++ class |libm2k::devices::ContextBuilder| 
% C++ Signature: libm2k::devices::ContextBuilder::ContextBuilder(libm2k::devices::ContextBuilder const & input1)
ContextBuilderConstructor2Definition = addConstructor(ContextBuilderDefinition, ...
    "libm2k::devices::ContextBuilder::ContextBuilder(libm2k::devices::ContextBuilder const & input1)", ...
    "Description", "clib.m2kPkg.libm2k.devices.ContextBuilder    Constructor of C++ class libm2k::devices::ContextBuilder"); % This description is shown as help to user. Modify it to appropriate description.
defineArgument(ContextBuilderConstructor2Definition, "input1", "clib.m2kPkg.libm2k.devices.ContextBuilder", "input");
validate(ContextBuilderConstructor2Definition);

%% C++ function |libm2k::devices::m2kOpen| with MATLAB name |clib.m2kPkg.libm2k.devices.m2kOpen|
% C++ Signature: libm2k::devices::M2k * libm2k::devices::m2kOpen(char const * uri)
%m2kOpenDefinition = addFunction(libDef, ...
%    "libm2k::devices::M2k * libm2k::devices::m2kOpen(char const * uri)", ...
%    "MATLABName", "clib.m2kPkg.libm2k.devices.m2kOpen", ...
%    "Description", "clib.m2kPkg.libm2k.devices.m2kOpen    Representation of C++ function libm2k::devices::m2kOpen"); % This description is shown as help to user. Modify it to appropriate description.
%defineArgument(m2kOpenDefinition, "uri", <MLTYPE>, "input", <SHAPE>); % '<MLTYPE>' can be int8,string, or char
%defineOutput(m2kOpenDefinition, "RetVal", "clib.m2kPkg.libm2k.devices.M2k", <SHAPE>);
%validate(m2kOpenDefinition);

%% C++ function |libm2k::devices::m2kOpen| with MATLAB name |clib.m2kPkg.libm2k.devices.m2kOpen|
% C++ Signature: libm2k::devices::M2k * libm2k::devices::m2kOpen()
%m2kOpenDefinition = addFunction(libDef, ...
%    "libm2k::devices::M2k * libm2k::devices::m2kOpen()", ...
%    "MATLABName", "clib.m2kPkg.libm2k.devices.m2kOpen", ...
%    "Description", "clib.m2kPkg.libm2k.devices.m2kOpen    Representation of C++ function libm2k::devices::m2kOpen"); % This description is shown as help to user. Modify it to appropriate description.
%defineOutput(m2kOpenDefinition, "RetVal", "clib.m2kPkg.libm2k.devices.M2k", <SHAPE>);
%validate(m2kOpenDefinition);

%% C++ function |libm2k::devices::deviceCloseAll| with MATLAB name |clib.m2kPkg.libm2k.devices.deviceCloseAll|
% C++ Signature: void libm2k::devices::deviceCloseAll()
deviceCloseAllDefinition = addFunction(libDef, ...
    "void libm2k::devices::deviceCloseAll()", ...
    "MATLABName", "clib.m2kPkg.libm2k.devices.deviceCloseAll", ...
    "Description", "clib.m2kPkg.libm2k.devices.deviceCloseAll    Representation of C++ function libm2k::devices::deviceCloseAll"); % This description is shown as help to user. Modify it to appropriate description.
validate(deviceCloseAllDefinition);

%% Validate the library definition
validate(libDef);

end
