@echo off
echo ===============================================
echo  CLEANUP: Removing all CODESYSControlWinV3x64 config folders
echo ===============================================

REM Stop runtime service if present
echo Stopping CODESYS service...
net stop CODESYSControlWinV3x64 >nul 2>&1

REM List of paths to clean
set PATHS=^
"C:\ProgramData\CODESYS\CODESYSControlWinV3x64" ^
"C:\Program Files\CODESYS\CODESYSControlWinV3x64" ^
"C:\Program Files (x86)\CODESYS\CODESYSControlWinV3x64" ^
"C:\Windows\System32\config\systemprofile\AppData\Roaming\CODESYS\CODESYSControlWinV3x64" ^
"C:\Windows\System32\config\systemprofile\AppData\Local\CODESYS\CODESYSControlWinV3x64"

echo.
echo Deleting known locations...
for %%F in (%PATHS%) do (
    if exist %%F (
        echo Removing: %%F
        rmdir /s /q %%F
    )
)

echo.
echo Searching entire system drive for extra instances...
for /d /r "C:\" %%D in (*CODESYSControlWinV3x64*) do (
    echo Removing: %%D
    rmdir /s /q "%%D" 2>nul
)

echo.
echo Restarting CODESYS service...
net start CODESYSControlWinV3x64 >nul 2>&1

echo.
echo Cleanup complete. CODESYS Control Win V3 x64 service restarted.
pause
