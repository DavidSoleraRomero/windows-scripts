@echo off

echo Limpiando carpetas...

:: Limpia la carpeta de archivos temporales del usuario
del /s /q %temp%\*.*
rd /s /q %temp%\
timeout /t 5 /nobreak

:: Limpia la carpeta de archivos temporales de Windows
del /s /q C:\Windows\Temp\*.*
rd /s /q C:\Windows\Temp\
timeout /t 5 /nobreak

:: Limpia la Papelera de reciclaje
del /s /q C:\$Recycle.Bin\*.*
rd /s /q C:\$Recycle.Bin\
timeout /t 5 /nobreak

:: Limpia la carpeta prefetch
del /s /q C:\Windows\Prefetch\*.*
rd /s /q C:\Windows\Prefetch\
timeout /t 5 /nobreak

echo Carpetas limpiadas.
echo Desfragmentando el disco...

defrag C: /U /V
timeout /t 10 /nobreak

echo Desfragmentación completada.
echo Ejecutando limpieza de disco...

cleanmgr
timeout /t 10 /nobreak

echo Limpieza de disco completada.
echo Iniciando búsqueda e instalación de actualizaciones de Windows...

wuauclt.exe /detectnow
timeout /t 5 /nobreak
wuauclt.exe /updatenow

echo Proceso de instalación de actualizaciones completado.
echo Ejecución de performance.bat finalizada.

pause


