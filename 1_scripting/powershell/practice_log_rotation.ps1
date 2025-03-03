# Rotate log file after it reaches its size threshold
$LogFilePath = "script_log.txt"
$MaxFileSizeMB = 1
if ((Get-Item $LogFilePath).length -lt ($MaxFileSizeMB * 1KB)) {
	$TimeSeconds = [int64](Get-Date -UFormat %s)
	Rename-Item $LogFilePath -NewName "script_log_$TimeSeconds.txt"
	Write-Output "Log rotated. " $LogFilePath
}
