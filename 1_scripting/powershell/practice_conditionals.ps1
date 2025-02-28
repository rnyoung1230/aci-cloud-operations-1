# Conditionals practice

# Example 1 - If statement
$weather = "sunny"

if ($weather -eq "sunny") {
	Write-Host "It's $weather today. What a good day for a car wash!"
}

# Example 2 - If-else statement
$weather = "rainy"

if ($weather -eq "sunny") {
	Write-Host "It's a good day for a car wash!"
} else {
	Write-Host "It's raining. Maybe another day."
}

# Example 3 - Else-if statement
$weather = "cloudy"

if ($weather -eq "sunny") {
	Write-Host "It's a good day for a car wash!"
} elseif ($weather -eq "cloudy") {
	Write-Host "The weather is OK. You can still have a car wash."
} else {
	Write-Host "It's not the best weather today. Maybe we try tomorrow instead."
}

