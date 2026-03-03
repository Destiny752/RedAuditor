RedAuditor es un script en Bash diseñado para automatizar el análisis de subredes y reconocimiento de hosts durante auditorías de seguridad y pruebas de penetración. Permite a pentesters mapear rápidamente una red y obtener información clave sobre su infraestructura.

Con solo indicar una red en formato CIDR (ej. 192.168.1.0/24), RedAuditor calcula automáticamente:

Dirección de red

Máscara de subred

Dirección de broadcast

Primera y última IP válida

Número total de hosts y hosts utilizables

Opcionalmente, permite realizar un escaneo de descubrimiento de hosts activos usando nmap.
 
Características principales

Análisis automático de redes en Bash

Cálculo de máscara, broadcast y rango de IP válidas

Identificación rápida del número de hosts disponibles

Integración con nmap para descubrimiento de hosts activos

Salida estructurada y legible, con colores

Validación de dependencias (ipcalc) y manejo de errores

Ideal para fases de reconocimiento y planificación de auditorías de seguridad

Cómo usar

Clona el repositorio:

git clone https://github.com/Destiny752/RedAuditor.git
cd RedAuditor

Dale permisos de ejecución:

chmod +x redauditor.sh

Ejecuta el script:

./redauditor.sh

Introduce la red en formato CIDR (ejemplo: 192.168.1.0/24) y sigue las instrucciones.

Dependencias

ipcalc → Para cálculo de subredes

sudo apt install ipcalc

nmap (opcional) → Para descubrir hosts activos

sudo apt install nmap

Ejemplo de uso
Introduce la red (ej: 192.168.1.0/24): 192.168.1.0/24

Información de la subred:
Network:   192.168.1.0
Netmask:   255.255.255.0
Broadcast: 192.168.1.255
HostMin:   192.168.1.1
HostMax:   192.168.1.254
Hosts/Net: 254

Si se desea escanear hosts activos:

nmap -sn 192.168.1.0/24

Licencia

Este proyecto está bajo MIT License.

Skills demostrados

Network reconnaissance / subnetting

Uso de herramientas de seguridad: nmap, ipcalc

Automatización de auditorías de red

Preparación de reportes profesionales de pentesting
