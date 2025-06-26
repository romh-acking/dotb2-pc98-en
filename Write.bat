::Folders
set projectFolder=%cd%

set filesHdi=%projectFolder%\files

set scriptHdi=%projectFolder%\script

::Tools
set toolsFolder=%projectFolder%\tools
set juiceFolder=%toolsFolder%\juice

::Roms Original
set hdi1=%projectFolder%\roms\Dead of the Brain 2.hdi

::Roms New
set hdi1New=%projectFolder%\roms\Dead of the Brain 2 (NEW).hdi

cd "%projectFolder%"

copy "%hdi1%" "%hdi1New%"

::::::::::::::::::::::::::::::::::::::::::::::::::::
::Dump Files
::::::::::::::::::::::::::::::::::::::::::::::::::::
::del /q "%filesHdi%/" /q

::rmdir /q /s "%filesHdi%"

::mkdir "%filesHdi%"

::"%toolsFolder%/NDC.exe" G "%hdi1%" 0 "%filesHdi%"

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Copy over script files
::::::::::::::::::::::::::::::::::::::::::::::::::::
cd "%filesHdi%/BRAIN2/MES"
del "*.MES"
del "*.mes"
del "*.MES.rkt"
del "*.mes.rkt"
for /R "%scriptHdi%" %%f in (*.MES.rkt) do copy "%%f"  "%filesHdi%/BRAIN2/MES"

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Compile script
::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::
:: Disk 1
::::::::::::::::::::::::::
cd "%filesHdi%/BRAIN2/MES"
"%juiceFolder%/juice.exe" -cf --engine ai5 *.MES.rkt
@pause
ren *.MES.rkt.mes ????????????????????.MES
ren 014A.MES 014A.CAL
ren 014B.MES 014B.CAL

::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Import script
::::::::::::::::::::::::::::::::::::::::::::::::::::

cd "%filesHdi%/BRAIN2/MES"

for /r %%i in (*.MES) do (
	"%toolsFolder%/NDC.exe" D "%hdi1New%" 0 "BRAIN2/MES/%%~nxi"
	"%toolsFolder%/NDC.exe" P "%hdi1New%" 0 "%%i" "BRAIN2/MES"
)

cd "%filesHdi%/BRAIN2/MES"

for /r %%i in (*.CAL) do (
	"%toolsFolder%/NDC.exe" D "%hdi1New%" 0 "BRAIN2/MES/%%~nxi"
	"%toolsFolder%/NDC.exe" P "%hdi1New%" 0 "%%i" "BRAIN2/MES"
)

@pause
