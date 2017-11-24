@echo off

set    zip=eeekk.zip
set ifiles=u_2_eeekk_pg03094.u2+u_3_eeekk_pg03094.u3+u_2_eeekk_pg03094.u2+u_3_eeekk_pg03094.u3+5_e_eeekk_pg03094.5e+5_f_eeekk_pg03094.5f
set  ofile=a.eeekk.rom

rem =====================================
setlocal ENABLEDELAYEDEXPANSION

set pwd=%~dp0
echo.
echo.

if EXIST %zip% (

	!pwd!7za x -otmp %zip%
	if !ERRORLEVEL! EQU 0 ( 
		cd tmp

		copy /b/y %ifiles% !pwd!%ofile%
		if !ERRORLEVEL! EQU 0 ( 
			echo.
			echo ** done **
			echo.
			echo Copy "%ofile%" into root of SD card
		)
		cd !pwd!
		rmdir /s /q tmp
	)

) else (

	echo Error: Cannot find "%zip%" file
	echo.
	echo Put "%zip%", "7za.exe" and "%~nx0" into the same directory
)

echo.
echo.
pause
