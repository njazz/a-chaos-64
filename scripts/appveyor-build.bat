@echo off

cd %APPVEYOR_BUILD_FOLDER%

echo Compiler: %COMPILER%
echo Architecture: %MSYS2_ARCH%
echo Platform: %PLATFORM%
echo MSYS2 directory: %MSYS2_DIR%
echo MSYS2 system: %MSYSTEM%
echo Bits: %BIT%

@echo on
set "PATH=C:\%MSYS2_DIR%\%MSYSTEM%\bin;C:\%MSYS2_DIR%\usr\bin;%PATH%"
bash -lc "pacman -S --needed --noconfirm pacman-mirrors"
bash -lc "pacman -S --needed --noconfirm git"
REM Update
bash -lc "pacman -Syu --noconfirm"

REM build tools
bash -lc "pacman -S --needed --noconfirm mingw-w64-${MSYS2_ARCH}-toolchain make patch"
REM dependencies
bash -lc "pacman -S --needed --noconfirm mingw-w64-${MSYS2_ARCH}-{cmake}"

bash -lc "echo ${APPVEYOR_BUILD_FOLDER}"
bash -lc "ls ${APPVEYOR_BUILD_FOLDER}"
bash -lc "mkdir ${APPVEYOR_BUILD_FOLDER}/build"
bash -lc "cd ${APPVEYOR_BUILD_FOLDER}/build && cmake -G 'MSYS Makefiles' -DCMAKE_BUILD_TYPE=Release ${APPVEYOR_BUILD_FOLDER}"
bash -lc "ls ${APPVEYOR_BUILD_FOLDER}/build"
bash -lc "cd ${APPVEYOR_BUILD_FOLDER}/build && make -j2"