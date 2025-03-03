
$MaxAttempts = 3
$Attempt = 1

while ($Attempt -le $MaxAttempts) {
	try {
		# Attempt a connection to the application server
#		$result = Invoke-RestMethod https://localhost:8080/info
		$result = Invoke-RestMethod https://cnn.com # This tests the happy path. Comment and uncomment preceeding line to test all retries
	}
	catch {
		Write-Host "Attempt $Attempt failed: $_"
		$Attempt++
		Start-Sleep -Seconds 2 # Add a delay before the next attempt
	}
if ($Attempt -gt $MaxAttempts) {
	Write-Host "Operation failed after $MaxAttempts attempts."
}
else {
	Write-Host "Operation succeeded before the max number of attempts($MaxAttempts)."
	break
}
}
