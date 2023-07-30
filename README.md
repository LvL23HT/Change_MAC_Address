# Change_MAC_Address

Change the MAC address of network adapters in your Windows system.

# Cambiador de dirección MAC para adaptadores de red en PowerShell

Este repositorio contiene un script de PowerShell que permite cambiar la dirección MAC de los adaptadores de red en su sistema Windows. Esta herramienta puede ser útil para pruebas de red, para la protección de la privacidad, o para cualquier situación donde se requiera un cambio de dirección MAC.

## Características del script

1. Enumera todas las interfaces de red activas en su sistema junto con sus direcciones MAC actuales.
2. Solicita al usuario que seleccione una interfaz de red introduciendo el número correspondiente.
3. Comprueba que el número introducido por el usuario es válido.
4. Solicita al usuario que introduzca la nueva dirección MAC que desea asignar a la interfaz de red seleccionada.
5. Verifica que la dirección MAC introducida sea válida.
6. Cambia la dirección MAC de la interfaz de red seleccionada a la nueva dirección MAC proporcionada.
7. Maneja los errores y muestra mensajes útiles en caso de que algo vaya mal.

## Cómo usar

1. Descargue el script y ábralo en PowerShell.
2. Siga las indicaciones en la consola para seleccionar una interfaz de red y proporcionar una nueva dirección MAC.

## A tener en cuenta

* Este script debe ejecutarse con privilegios de administrador.
* No todos los adaptadores de red permiten el cambio de dirección MAC.
* Algunas direcciones MAC pueden estar reservadas y no podrán ser utilizadas.
* Debe reiniciar su interfaz de red o su sistema para que los cambios surtan efecto.
* El formato de la dirección MAC debe ser XX:XX:XX:XX:XX:XX.

## Contribuciones

Este es un proyecto de código abierto. Las contribuciones son bienvenidas. Por favor, abra una solicitud de extracción (Pull Request) para proponer mejoras o si quiere reportar un problema, hágalo a través de un issue.

## Licencia

Este proyecto está licenciado bajo la licencia MIT.
