# Example writing log output to stdout and stderr files

$stdoutLog = "stdout_log.txt"
$stderrLog = "stderr_log.txt"

Write-Output "This is a standard output message." | Out-File -Append $stdoutLog
Write-Error "This is an error message." 2>&1 | Out-File -Append $stderrLog

