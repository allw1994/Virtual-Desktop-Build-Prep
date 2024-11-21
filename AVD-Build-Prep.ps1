#Create build directory to dump files
New-Item -ItemType Directory -Path C:\Build -Force

cd C:\Build

git clone "https://github.com/allw1994/Virtual-Desktop-Optimization-Tool.git" VDOT --quiet
git clone "https://github.com/allw1994/Virtual-Desktop-Warmup-Script.git" VDWS --quiet

set-executionpolicy -scope currentUser unrestricted

cd VDOT

.\Windows_VDOT.ps1 -optimizations All -AdvancedOptimizations Edge -AcceptEula -Verbose

cd VDWS
.\Warmup.ps1 -Mode Install





