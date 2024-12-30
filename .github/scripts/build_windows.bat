@call "C:\Program Files (x86)\Intel\oneAPI\setvars-vcvarsall.bat" %VS_VER%

for /f "tokens=* usebackq" %%f in (`dir /b "C:\Program Files (x86)\Intel\oneAPI\compiler\" ^| findstr /V latest ^| sort`) do @set "LATEST_VERSION=%%f"
@call "C:\Program Files (x86)\Intel\oneAPI\compiler\%LATEST_VERSION%\env\vars.bat"

cd oneAPI-samples\DirectProgramming\Fortran\CombinationalLogic\openmp-primes
devenv.com Nemoh.sln /build "Release|x64"
ls
exit /b %ERRORLEVEL%
