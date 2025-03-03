
# ERROR HANDLING EXAMPLE 1

#$ErrorActionPreference = "Inquire"
# Command that may fail
Get-Content "NonexistentFile.txt"
# Check if the last command succeeded using $?
if ($?) {
	Write-Host "Command succeeded."
} else {
	Write-Host "Command failed."
}

# ERROR HANDLING EXAMPLE 2

try {
	$result = 10 / 0 # This operation will cause an error
	Write-Host "Result: $result"
}
catch {
	Write-Host "An error occurred: $_"
}
finally {
	# Code that always runs...for cleanup or logging
	Write-Host "Finally block: This always runs, even after an error or exit."
}
