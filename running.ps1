$scriptDir = $PSScriptRoot
Write-Host "Direktori skrip: $scriptDir"

try {
    $pythonPath = "D:\Python\python.exe" # Ganti dengan path lengkap python anda
    $pythonScript = Join-Path $scriptDir "main.py"
    & $pythonPath $pythonScript # & digunakan untuk menjalankan command dengan path lengkap.
}
catch {
    Write-Error "Terjadi kesalahan saat menjalankan main.py: $($_.Exception.Message)"
}