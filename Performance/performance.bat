@echo off

echo Limpiando carpetas...

:: Limpia la carpeta de archivos temporales del usuario
echo Limpiando %temp%
del /q /s %temp%\*.* >nul
rmdir /s /q %temp%\ >nul
mkdir %temp%\ >nul
timeout /t 2 /nobreak

:: Limpia la carpeta de archivos temporales de Windows
echo Limpiando temp
del /q /s C:\Windows\Temp\*.* >nul
rmdir /s /q C:\Windows\Temp\ >nul
mkdir C:\Windows\Temp\ >nul
timeout /t 2 /nobreak

:: Limpia la carpeta prefetch
echo Limpiando prefetch
del /q /s C:\Windows\Prefetch\*.* >nul
rmdir /s /q C:\Windows\Prefetch\ >nul
mkdir C:\Windows\Prefetch\ >nul
timeout /t 2 /nobreak

echo Carpetas limpiadas.
echo Desfragmentando el disco...

defrag C: /U /V
timeout /t 2 /nobreak

echo Desfragmentación completada.
echo Ejecutando limpieza de disco...

:: Se debe configurar previamente cleanmgr /sageset:1 y seleccionar las opciones deseadas
cleanmgr /sagerun:1
timeout /t 2 /nobreak

echo Limpieza de disco completada.
echo Búsqueda de errores en disco en curso...

sfc /scannow
timeout /t 2 /nobreak

echo Búsqueda de errores en disco completada.
echo Ejecución de performance.bat finalizada.

pause


