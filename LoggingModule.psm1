# LoggingModule.psm1

function Log-Action {
    param (
        [string]$message
    )
    $logFilePath = Join-Path -Path $PSScriptRoot -ChildPath "action_log.txt"
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Add-Content -Path $logFilePath -Value "$timestamp - $message"
}