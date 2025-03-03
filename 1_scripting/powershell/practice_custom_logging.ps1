# Write a custom logging function
function Write-Log {
	param(
		[String]$Message,
		[String]$LogFile = "script_log.txt",
		[String]$LogLevel = "INFO"
	)
	$Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
	$LogEntry = "[$Timestamp] [$LogLevel] $Message"
	# Output to stdout
	Write-Output $LogEntry
	# Output to log file
	Add-Content -Path $LogFile -value $LogEntry
}
# Example usage
Write-Log -Message "Script started."
Write-Log -Message "Processing data." -LogLevel "DEBUG"
Write-Log -Message "An error occurred!" -LogLevel "ERROR"
Write-Log -Message "Script completed."
