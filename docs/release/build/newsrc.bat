set from=C:\MESS
set to=c:\MESS\docs\release

rd %to%\src /q /s

md %to%\src\devices\bus\nes
copy /Y %from\src\devices\bus\nes\nes_ines.hxx      %to%\src\devices\bus\nes
copy /Y %from\src\devices\bus\nes\nes_unif.hxx      %to%\src\devices\bus\nes

md %to%\src\devices\bus\snes
copy /Y %from\src\devices\bus\snes\snes_slot.cpp    %to%\src\devices\bus\snes

md %to%\src\devices\bus\saitek_osa
copy /Y %from%\src\devices\bus\saitek_osa\maestro.cpp %to%\src\devices\bus\saitek_osa

md %to%\src\emu\debug
copy /Y %from%\src\emu\diimage.cpp                  %to%\src\emu
copy /Y %from%\src\emu\emuopts.*                    %to%\src\emu
copy /Y %from%\src\emu\mconfig.cpp                  %to%\src\emu
copy /Y %from%\src\emu\romload.cpp                  %to%\src\emu
copy /Y %from%\src\emu\softlist.*                   %to%\src\emu
copy /Y %from%\src\emu\softlist_dev.*               %to%\src\emu
copy /Y %from%\src\emu\video.*                      %to%\src\emu
copy /Y %from%\src\emu\debug\dvmemory.cpp           %to%\src\emu\debug
copy /Y %from%\src\version.cpp                      %to%\src

md %to%\src\frontend\mame\ui
copy /Y %from%\src\frontend\mame\mameopts.*         %to%\src\frontend\mame
copy /Y %from%\src\frontend\mame\audit.*            %to%\src\frontend\mame
copy /Y %from%\src\frontend\mame\language.cpp       %to%\src\frontend\mame
copy /Y %from%\src\frontend\mame\ui\about.cpp       %to%\src\frontend\mame\ui
copy /Y %from%\src\frontend\mame\ui\inifile.cpp     %to%\src\frontend\mame\ui
copy /Y %from%\src\frontend\mame\ui\ui.cpp          %to%\src\frontend\mame\ui
copy /Y %from%\src\frontend\mame\ui\ui.h            %to%\src\frontend\mame\ui

md %to%\src\lib\util
copy /Y %from%\src\lib\util\options.*               %to%\src\lib\util
copy /Y %from%\src\lib\util\chdcd.cpp               %to%\src\lib\util

md %to%\src\mame\drivers
copy /Y %from%\src\mame\mess.cpp                    %to%\src\mame
copy /Y %from%\src\mame\drivers\snes.cpp            %to%\src\mame\drivers

md %to%\src\osd\winui
xcopy /E /Y %from%\src\osd\winui                    %to%\src\osd\winui

md %to%\src\osd\modules\render
copy /Y %from%\src\osd\modules\render\drawd3d.cpp   %to%\src\osd\modules\render

md %to%\src\osd\windows
copy /Y %from%\src\osd\windows\winmain.*            %to%\src\osd\windows

rem now save all our stuff to github
copy %from%\*.bat                                   %to%\build
xcopy /E /Y %from%\scripts                          %to%\scripts

rem convert all the unix documents to windows format for notepad
type %from%\docs\BSD3Clause.txt    | MORE /P > %to%\docs\BSD3Clause.txt
type %from%\docs\LICENSE           | MORE /P > %to%\docs\license.txt
type %from%\docs\winui_license.txt | MORE /P > %to%\docs\winui_license.txt

