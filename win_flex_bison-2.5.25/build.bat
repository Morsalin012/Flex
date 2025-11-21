@echo off
pushd %~dp0


@echo off
pushd %~dp0
.\win_flex.exe first.l
if errorlevel 1 goto :err
gcc lex.yy.c -o first.exe
if errorlevel 1 goto :err
echo Running first.exe. Type text and press Ctrl+Z then Enter to send EOF, or type 'quit' then Enter to exit.
.\first.exe
popd
exit /b 0
:err
echo Build failed.
popd
exit /b 1


popd
nexit /b 1echo Build failed.popd
nexit /b 0
n:errfirst.exenwin_flex.exe first.l
nif errorlevel 1 goto :err
ngcc lex.yy.c -o first.exe
nif errorlevel 1 goto :err
necho Running first.exe. Type text and press Ctrl+Z then Enter to send EOF, or type 'quit' then Enter to exit.