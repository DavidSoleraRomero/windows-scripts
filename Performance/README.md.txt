Información de la carpeta Performance (Script diseñado para Windows 10):

- performance.rar --> Contiene el fichero .bat en caso de que se requiera el envío de la aplicación de forma comprimida
- performance.bat --> Es el script compilado
- performance.txt --> Contiene la información del script (.bat). Se puede modificar borrando / añadiendo comandos de Windows y estos se ejecutarán.
                                           Para guardar los cambios, simplemente "Guardar como..." y se guarda el fichero con la extensión .bat

Instrucciones de uso

Instrucción de una sola vez
Abrir cmd, escribir cleanmgr /sageset:1 y seleccionar las opciones deseadas (este paso solo se realiza 1 vez por dispositivo).
Después le daremos click en "Aceptar" y ya tendremos guardada la configuración

1. Realizar click derecho sobre performance.bat
2. Hacer click en "Ejecutar como administrador" en el menú contextual
3. Esperar a que finalice la ejecución

Aclaraciones

Este script realiza los siguientes pasos:

1. Limpiado de las carpetas:
  - %temp%
  - temp
  - prefetch
2. Desfragmentación de disco
3. Limpieza general de disco
4. Búsqueda de errores en el sistema

Autor: David Solera Romero
