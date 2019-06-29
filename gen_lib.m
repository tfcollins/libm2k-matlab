clear all;
!rm m2kPkgData.xml
!rm definem2kPkg.mlx
!rm definem2kPkg.m
!rm -rf m2kPkg
!rm definem2kPkg.mlx
clc;

%%
% Full path to files in the library
productPath = fullfile(pwd,'include','libm2k');
% Full path to folder containing all header files
hppPath = productPath;
% Full path to folder containing include files
iPath = hppPath;
% Full path to folder containing library files. This example uses the MinGW-w64 compiler.
libPath = '.';
% Library file name
libFile = 'libm2k.so';

myPkg = 'm2kPkg';

%%
h = {};
h1 = fullfile(hppPath,'analog','m2kanalogin.hpp'); h = [{h1},h(:)'];
h1 = fullfile(hppPath,'contextbuilder.hpp'); h = [{h1},h(:)'];
h1 = fullfile(hppPath,'m2k.hpp'); h = [{h1},h(:)'];
headers = h;

%%
v = true;
clibgen.generateLibraryDefinition(headers,...
    'IncludePath', iPath,...
    'Libraries', fullfile(libPath,libFile),...
    'PackageName', myPkg,...
    'Verbose',v)

% build(definem2kPkg)