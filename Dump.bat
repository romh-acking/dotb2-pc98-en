::Folders
set projectFolder=%cd%

set files=%projectFolder%\files

set script=%projectFolder%\script

::Tools
set toolsFolder=%projectFolder%\tools
set juiceFolder=%toolsFolder%\juice

::Roms Original
set hardDrive=%projectFolder%\roms\Dead of the Brain 2.hdi

::Dump Files
rmdir /q /s "%files%"
rmdir /q /s "%script%"

mkdir "%files%"
mkdir "%script%"

"%toolsFolder%/NDC.exe" G "%hardDrive%" 0 "%files%"

:::::::::::::::::::::::::
::Dump script
:::::::::::::::::::::::::

cd "%files%\BRAIN2\MES"

ren  "*.CAL" "*.MES"
"%juiceFolder%/juice.exe" -f -d --engine adv --extraop ***.MES
for /R "%files%\BRAIN2\MES" %%f in (*.mes.rkt) do copy "%%f" "%script%"

@pause
