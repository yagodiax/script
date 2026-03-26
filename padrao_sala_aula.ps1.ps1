# ==========================================
# PADRÃO TI - SALA DE AULA
# Perfil: Pedagógico
# Uso: Professores e alunos
# Objetivo: Ambiente leve, estável e padronizado
# ==========================================

Write-Host "========================================="
Write-Host "Iniciando provisionamento - Sala de Aula"
Write-Host "========================================="

$apps = @(
    "Google.Chrome",
    "TheDocumentFoundation.LibreOffice",
    "Adobe.Acrobat.Reader.64-bit",
    "VideoLAN.VLC",
    "7zip.7zip",
    "SlackTechnologies.Slack"
)

foreach ($app in $apps) {
    Write-Host ""
    Write-Host "Instalando: $app"
    
    winget install --id $app -e `
        --accept-package-agreements `
        --accept-source-agreements
}

Write-Host ""
Write-Host "========================================="
Write-Host "Provisionamento concluído com sucesso."
Write-Host "========================================="

pause