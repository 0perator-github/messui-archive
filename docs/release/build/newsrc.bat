set from=C:\MESS
set to=c:\MESS\docs\release

rd %to%\src /q /s

md %to%\src\emu
copy /Y %from%\src\emu\emuopts.cpp %to%\src\emu
copy /Y %from%\src\emu\video.* %to%\src\emu
copy /Y %from%\src\version.cpp %to%\src

md %to%\src\frontend\mame\ui
copy /Y %from%\src\frontend\mame\audit.* %to%\src\frontend\mame
copy /Y %from%\src\frontend\mame\ui\ui.cpp %to%\src\frontend\mame\ui

md %to%\src\lib\util
copy /Y %from%\src\lib\util\options.cpp %to%\src\lib\util

md %to%\src\osd\windows
copy /Y %from%\src\osd\windows\winmain.cpp %to%\src\osd\windows

md %to%\src\osd\winui
xcopy /E /Y %from%\src\osd\winui %to%\src\osd\winui

rem now save all our stuff to github
copy %from%\*.bat %to%\build
xcopy /E /Y %from%\scripts %to%\scripts

rem convert all the unix documents to windows format for notepad
type %from%\docs\BSD3Clause.txt    | MORE /P > %to%\docs\BSD3Clause.txt
type %from%\docs\config.txt        | MORE /P > %to%\docs\config.txt
type %from%\docs\floppy.txt        | MORE /P > %to%\docs\floppy.txt
type %from%\docs\hlsl.txt          | MORE /P > %to%\docs\hlsl.txt
type %from%\docs\imgtool.txt       | MORE /P > %to%\docs\imgtool.txt
type %from%\docs\mame.txt          | MORE /P > %to%\docs\mame.txt
type %from%\docs\LICENSE           | MORE /P > %to%\docs\license.txt
type %from%\docs\newvideo.txt      | MORE /P > %to%\docs\newvideo.txt
type %from%\docs\nscsi.txt         | MORE /P > %to%\docs\nscsi.txt
type %from%\docs\SDL.txt           | MORE /P > %to%\docs\SDL.txt
type %from%\docs\windows.txt       | MORE /P > %to%\docs\windows.txt
type %from%\docs\winui_license.txt | MORE /P > %to%\docs\winui_license.txt

pause
echo off
cls
echo.
echo RAR up everything.
echo.

pause
