# Practice loops

# Define an array of car types
$carTypes = "Sedan", "SUV", "Truck", "Convertible"

# For loop to wash each car
for ($i = 0; $i -lt $carTypes.Length; $i++) {
	$currentcar = $carTypes[$i]
	Write-Output "Washing $currentcar."
}

# While loop

# Example: Wash cars until the water runs out
$waterSupply = 1000 # Assume 1000 gallons of water
while ($waterSupply -gt 0) {
	Write-Output "Washing Car, Water Remaining: $waterSupply gallons"
	$waterSupply -= 50 # Simulate water consumption
}
Write-Output "No more car washes available today. We're out of water!"
