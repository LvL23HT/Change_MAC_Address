# Obtiene todas las interfaces de red
$adapters = Get-NetAdapter | Where-Object { $_.Status -eq 'Up' }

# Muestra todas las interfaces de red con sus direcciones MAC actuales
$adapters | Format-Table -Property Name, MacAddress

# Solicita al usuario que introduzca el número de la interfaz de red que desea cambiar
$adapterNumber = Read-Host -Prompt 'Introduce el numero de la interfaz de red que quieres cambiar (1 para la primera, 2 para la segunda, etc.)'

# Convierte la entrada del usuario en un número entero
$adapterNumber = [int]$adapterNumber

# Verifica si el numero introducido por el usuario es valido
if ($adapterNumber -le 0 -or $adapterNumber -gt $adapters.Count) {
    Write-Host "Numero de interfaz de red no valido. Por favor, selecciona un numero entre 1 y $($adapters.Count)."
    exit
}

# Restamos 1 al número del adaptador para manejar correctamente los índices en PowerShell
$adapterToChange = $adapters[$adapterNumber - 1]

# Solicita al usuario que introduzca la nueva direccion MAC
$NewMAC = Read-Host -Prompt 'Introduce la nueva direccion MAC'

# Verifica si la dirección MAC introducida por el usuario es válida
if (-not ($NewMAC -match "^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$")) {
    Write-Host "Dirección MAC no válida. Por favor, introduce una dirección MAC en el formato correcto (XX:XX:XX:XX:XX:XX)."
    exit
}

# Intenta cambiar la dirección MAC y maneja cualquier error que pueda ocurrir
try {
    Set-NetAdapterAdvancedProperty -Name $adapterToChange.Name -DisplayName "Network Address" -DisplayValue $NewMAC -ErrorAction Stop
} catch {
    Write-Host "Error al cambiar la dirección MAC: $($_.Exception.Message)"
    exit
}

Write-Host "La direccion MAC de $($adapterToChange.Name) ha sido cambiada a $NewMAC"


