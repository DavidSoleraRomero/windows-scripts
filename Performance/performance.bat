@echo off

echo Limpiando carpetas...

:: Limpia la carpeta de archivos temporales del usuario
rd /s /q %temp%\*.*
rmdir /s /q %temp%\*
timeout /t 5 /nobreak

:: Limpia la carpeta de archivos temporales de Windows
rd /s /q C:\Windows\Temp\*.*
rmdir /s /q C:\Windows\Temp\*
timeout /t 5 /nobreak

:: Limpia la Papelera de reciclaje
rd /s /q C:\$Recycle.Bin\*.*
rmdir /s /q C:\$Recycle.Bin\*
timeout /t 5 /nobreak

:: Limpia la carpeta prefetch
rd /s /q C:\Windows\Prefetch
rmdir /s /q  C:\Windows\Prefetch\*
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

